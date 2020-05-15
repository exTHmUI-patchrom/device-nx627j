.class Lcom/android/server/wifi/WifiController$ClientModeCallback;
.super Ljava/lang/Object;
.source "WifiController.java"

# interfaces
.implements Lcom/android/server/wifi/ClientModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiController;Lcom/android/server/wifi/WifiController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiController;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiController$1;

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ClientModeCallback;-><init>(Lcom/android/server/wifi/WifiController;)V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 234
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "ClientMode unexpected failure: state unknown"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$300(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    const v1, 0x26010

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 237
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "ClientMode stopped"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    const v1, 0x26014

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v1, "client mode active"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ClientModeCallback;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected state update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiController;->access$600(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void
.end method
