<?php
$user = $this->session->userdata('user');
?>
<script language="javascript" type="text/javascript">
    var userId = "<?php echo $user['userId']; ?>";
    var name = "<?php echo $user['name']; ?>";
    var ProfilePictureUrl = "<?php echo $user['profile_image']; ?>";
    var baseURL = "<?php echo base_url(); ?>";
    $(document).ready(function () {
        $('.chat-window-inner-content').removeAttr('height');
        $('.content').removeAttr('height');

        $.chat({
            userId: userId,
            Name: name,
            ProfilePictureUrl: ProfilePictureUrl,
            roomId: 1,
            typingText: 'is typing...',
            emptyRoomText: "There's no one around here.",
            chatJsContentPath: baseURL + "assets/",
            adapter: new DemoAdapter()
        });
    });
</script>