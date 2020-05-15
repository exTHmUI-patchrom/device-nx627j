.class Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;
.super Landroid/telephony/mbms/MbmsDownloadSessionCallback;
.source "MbmsDownloadServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->initialize(ILandroid/telephony/mbms/IMbmsDownloadSessionCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

.field final synthetic val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

.field final synthetic val$subscriptionId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;Landroid/telephony/mbms/IMbmsDownloadSessionCallback;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    .line 129
    iput-object p1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iput-object p2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    iput p3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iput p4, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-direct {p0}, Landroid/telephony/mbms/MbmsDownloadSessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0, p1, p2}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onError(ILjava/lang/String;)V

    .line 140
    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Middleware cannot send an unknown error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onFileServicesUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/mbms/FileServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/mbms/FileServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0, p1}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onFileServicesUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onMiddlewareReady()V
    .locals 4

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$callback:Landroid/telephony/mbms/IMbmsDownloadSessionCallback;

    invoke-interface {v0}, Landroid/telephony/mbms/IMbmsDownloadSessionCallback;->onMiddlewareReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->this$0:Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;

    iget v2, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$uid:I

    iget v3, p0, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase$1;->val$subscriptionId:I

    invoke-virtual {v1, v2, v3}, Landroid/telephony/mbms/vendor/MbmsDownloadServiceBase;->onAppCallbackDied(II)V

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
