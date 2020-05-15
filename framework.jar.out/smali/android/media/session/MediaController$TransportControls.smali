.class public final Landroid/media/session/MediaController$TransportControls;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TransportControls"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportController"


# instance fields
.field final synthetic this$0:Landroid/media/session/MediaController;


# direct methods
.method private constructor <init>(Landroid/media/session/MediaController;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/session/MediaController;

    .line 660
    iput-object p1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/session/MediaController;Landroid/media/session/MediaController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/session/MediaController;
    .param p2, "x1"    # Landroid/media/session/MediaController$1;

    .line 657
    invoke-direct {p0, p1}, Landroid/media/session/MediaController$TransportControls;-><init>(Landroid/media/session/MediaController;)V

    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 3

    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->fastForward(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 883
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 842
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->pause(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public play()V
    .locals 3

    .line 758
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->play(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 772
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->playFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling play("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for playFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 793
    if-nez p1, :cond_0

    .line 796
    const-string p1, ""

    .line 799
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->playFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    goto :goto_0

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling play("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 813
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->playFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling play("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 822
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for playFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .locals 3

    .line 672
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->prepare(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->prepareFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling prepare("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 692
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty String for prepareFromMediaId."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 717
    if-nez p1, :cond_0

    .line 720
    const-string p1, ""

    .line 723
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->prepareFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    goto :goto_0

    .line 724
    :catch_0
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling prepare("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 742
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->prepareFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling prepare("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 743
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify a non-empty Uri for prepareFromUri."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewind()V
    .locals 3

    .line 902
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->rewind(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 906
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .line 867
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->seekTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "customAction"    # Landroid/media/session/PlaybackState$CustomAction;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 943
    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 947
    return-void

    .line 944
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 959
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->sendCustomAction(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 966
    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Dead object in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 960
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CustomAction cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .line 928
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Landroid/media/session/ISessionController;->rate(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling rate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 932
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToNext()V
    .locals 3

    .line 890
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->next(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling next."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 894
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToPrevious()V
    .locals 3

    .line 913
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->previous(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling previous."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 917
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 4
    .param p1, "id"    # J

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Landroid/media/session/ISessionController;->skipToQueueItem(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling skipToItem("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    .line 854
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v0}, Landroid/media/session/MediaController;->access$500(Landroid/media/session/MediaController;)Landroid/media/session/ISessionController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v1}, Landroid/media/session/MediaController;->access$300(Landroid/media/session/MediaController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/media/session/MediaController$TransportControls;->this$0:Landroid/media/session/MediaController;

    invoke-static {v2}, Landroid/media/session/MediaController;->access$400(Landroid/media/session/MediaController;)Landroid/media/session/MediaController$CallbackStub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/media/session/ISessionController;->stop(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    .line 856
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "TransportController"

    const-string v2, "Error calling stop."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
