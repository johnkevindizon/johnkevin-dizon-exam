<?php
$apiKey = 'AIzaSyB0jWk_9jFTa8xuF2uSZ8av6fN4emgB4jw';
$channelId = 'UC1VByHTq_OupkYNoAmbaa9w';

$baseUrl = "https://www.googleapis.com/youtube/v3";

// Fetch Channel Info
$channelUrl = "$baseUrl/channels?part=snippet&id=$channelId&key=$apiKey";
$channelResponse = file_get_contents($channelUrl);
$channelData = json_decode($channelResponse, true);

// Fetch Videos
$videosUrl = "$baseUrl/search?key=$apiKey&channelId=$channelId&part=snippet&order=date&maxResults=100";
$videosResponse = file_get_contents($videosUrl);
$videosData = json_decode($videosResponse, true);

// Database Connection
$conn = new mysqli("localhost", "root", "", "youtube_db");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Save Channel Info
$channelSnippet = $channelData['items'][0]['snippet'];
$profilePicture = $channelSnippet['thumbnails']['default']['url'];
$name = $channelSnippet['title'];
$description = $channelSnippet['description'];

$stmt = $conn->prepare("INSERT INTO youtube_channels (channel_id, profile_picture, name, description) VALUES (?, ?, ?, ?)");
$stmt->bind_param("ssss", $channelId, $profilePicture, $name, $description);
$stmt->execute();
$stmt->close();

// Save Videos
$stmt = $conn->prepare("INSERT INTO youtube_channel_videos (channel_id, video_id, title, description, thumbnail) VALUES (?, ?, ?, ?, ?)");
foreach ($videosData['items'] as $item) {
    $videoId = $item['id']['videoId'];
    $title = $item['snippet']['title'];
    $description = $item['snippet']['description'];
    $thumbnail = $item['snippet']['thumbnails']['default']['url'];
    
    $stmt->bind_param("sssss", $channelId, $videoId, $title, $description, $thumbnail);
    $stmt->execute();
}
$stmt->close();

$conn->close();

echo "YouTube channel and videos data have been saved successfully.";
?>