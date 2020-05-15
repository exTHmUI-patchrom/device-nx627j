.class Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;
.super Ljava/lang/Object;
.source "WifiStateMachinePrime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachinePrime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field mActiveManager:Lcom/android/server/wifi/ActiveModeManager;

.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachinePrime;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;->this$0:Lcom/android/server/wifi/WifiStateMachinePrime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiStateMachinePrime;Lcom/android/server/wifi/WifiStateMachinePrime$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/WifiStateMachinePrime;
    .param p2, "x1"    # Lcom/android/server/wifi/WifiStateMachinePrime$1;

    .line 251
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;-><init>(Lcom/android/server/wifi/WifiStateMachinePrime;)V

    return-void
.end method


# virtual methods
.method getActiveModeManager()Lcom/android/server/wifi/ActiveModeManager;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;->mActiveManager:Lcom/android/server/wifi/ActiveModeManager;

    return-object v0
.end method

.method setActiveModeManager(Lcom/android/server/wifi/ActiveModeManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/server/wifi/ActiveModeManager;

    .line 255
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachinePrime$ModeCallback;->mActiveManager:Lcom/android/server/wifi/ActiveModeManager;

    .line 256
    return-void
.end method
