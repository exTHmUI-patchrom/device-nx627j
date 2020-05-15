.class Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;
.super Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalClientInfo"
.end annotation


# static fields
.field private static final INTERNAL_CLIENT_HANDLER:I


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V
    .locals 0
    .param p2, "requesterUid"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;

    .line 1957
    iput-object p1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    .line 1958
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientInfo;-><init>(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;ILandroid/os/Messenger;)V

    .line 1959
    return-void
.end method


# virtual methods
.method public reportEvent(IIILjava/lang/Object;)V
    .locals 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 1963
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1964
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1965
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1966
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1967
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1969
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1972
    goto :goto_0

    .line 1970
    :catch_0
    move-exception v1

    .line 1971
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;Ljava/lang/String;)V

    .line 1973
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public sendRequestToClientHandler(I)V
    .locals 1
    .param p1, "what"    # I

    .line 2000
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V

    .line 2001
    return-void
.end method

.method public sendRequestToClientHandler(ILandroid/net/wifi/WifiScanner$ScanSettings;Landroid/os/WorkSource;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 1981
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1982
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1983
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1984
    if-eqz p2, :cond_0

    .line 1985
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1986
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "ScanSettings"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1987
    const-string v2, "WorkSource"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1988
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1990
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->getUid()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 1992
    iget-object v1, p0, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$InternalClientInfo;->this$0:Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;->access$5900(Lcom/android/server/wifi/scanner/WifiScanningServiceImpl;)Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/scanner/WifiScanningServiceImpl$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1993
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2005
    const-string v0, "InternalClientInfo[]"

    return-object v0
.end method
