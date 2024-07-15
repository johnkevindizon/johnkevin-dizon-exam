<?php
header('Content-Type: application/json');

// Database Connection
$conn = new mysqli("localhost", "root", "", "youtube_db");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$channelId = $_GET['channel_id'];

// Fetch Channel Info
$channelQuery = "SELECT * FROM youtube_channels WHERE channel_id='$channelId'";
$channelResult = $conn->query($channelQuery);
$channelInfo = $channelResult->fetch_assoc();

// Fetch Videos
$videosQuery = "SELECT * FROM youtube_channel_videos WHERE channel_id='$channelId'";
$videosResult = $conn->query($videosQuery);
$videos = [];
while ($video = $videosResult->fetch_assoc()) {
    $videos[] = $video;
}

$response = [
    'channel' => $channelInfo,
    'videos' => $videos
];

echo json_encode($response);

$conn->close();
?>
