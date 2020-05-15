.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 757
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 758
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 759
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 763
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)Ljava/lang/Object;

    move-result-object v0

    .line 764
    .local v0, "listener":Ljava/lang/Object;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 867
    const-string v1, "WifiP2pManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 857
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 858
    .local v1, "handoverBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 859
    if-eqz v1, :cond_0

    .line 860
    const-string v2, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 861
    :cond_0
    nop

    .line 862
    .local v2, "handoverMessage":Ljava/lang/String;
    :goto_0
    move-object v3, v0

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;

    .line 863
    invoke-interface {v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;->onHandoverMessageAvailable(Ljava/lang/String;)V

    .line 864
    .end local v2    # "handoverMessage":Ljava/lang/String;
    goto/16 :goto_1

    .line 850
    .end local v1    # "handoverBundle":Landroid/os/Bundle;
    :sswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroupList;

    .line 851
    .local v1, "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    if-eqz v0, :cond_1

    .line 852
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;

    .line 853
    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;->onPersistentGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroupList;)V

    goto :goto_1

    .line 846
    .end local v1    # "groups":Landroid/net/wifi/p2p/WifiP2pGroupList;
    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    .line 847
    .local v1, "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$200(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;)V

    .line 848
    goto :goto_1

    .line 840
    .end local v1    # "resp":Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 841
    .local v1, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v0, :cond_1

    .line 842
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_1

    .line 834
    .end local v1    # "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 835
    .local v1, "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v0, :cond_1

    .line 836
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_1

    .line 828
    .end local v1    # "wifiP2pInfo":Landroid/net/wifi/p2p/WifiP2pInfo;
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 829
    .local v1, "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v0, :cond_1

    .line 830
    move-object v2, v0

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_1

    .line 823
    .end local v1    # "peers":Landroid/net/wifi/p2p/WifiP2pDeviceList;
    :sswitch_6
    if-eqz v0, :cond_1

    .line 824
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_1

    .line 795
    :sswitch_7
    if-eqz v0, :cond_1

    .line 796
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_1

    .line 766
    :sswitch_8
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$100(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 768
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$102(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    .line 870
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_8
        0x22002 -> :sswitch_7
        0x22003 -> :sswitch_6
        0x22005 -> :sswitch_7
        0x22006 -> :sswitch_6
        0x22008 -> :sswitch_7
        0x22009 -> :sswitch_6
        0x2200b -> :sswitch_7
        0x2200c -> :sswitch_6
        0x2200e -> :sswitch_7
        0x2200f -> :sswitch_6
        0x22011 -> :sswitch_7
        0x22012 -> :sswitch_6
        0x22014 -> :sswitch_5
        0x22016 -> :sswitch_4
        0x22018 -> :sswitch_3
        0x2201d -> :sswitch_7
        0x2201e -> :sswitch_6
        0x22020 -> :sswitch_7
        0x22021 -> :sswitch_6
        0x22023 -> :sswitch_7
        0x22024 -> :sswitch_6
        0x22026 -> :sswitch_7
        0x22027 -> :sswitch_6
        0x22029 -> :sswitch_7
        0x2202a -> :sswitch_6
        0x2202c -> :sswitch_7
        0x2202d -> :sswitch_6
        0x2202f -> :sswitch_7
        0x22030 -> :sswitch_6
        0x22032 -> :sswitch_2
        0x22034 -> :sswitch_7
        0x22035 -> :sswitch_6
        0x22037 -> :sswitch_7
        0x22038 -> :sswitch_6
        0x2203a -> :sswitch_1
        0x2203c -> :sswitch_7
        0x2203d -> :sswitch_6
        0x2203f -> :sswitch_7
        0x22040 -> :sswitch_6
        0x22042 -> :sswitch_7
        0x22043 -> :sswitch_6
        0x22045 -> :sswitch_7
        0x22046 -> :sswitch_6
        0x22048 -> :sswitch_7
        0x22049 -> :sswitch_6
        0x2204d -> :sswitch_0
        0x22050 -> :sswitch_6
        0x22051 -> :sswitch_7
        0x22053 -> :sswitch_7
        0x22054 -> :sswitch_6
        0x22056 -> :sswitch_7
        0x22057 -> :sswitch_6
    .end sparse-switch
.end method
