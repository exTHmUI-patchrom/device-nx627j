.class Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiAwareStateManager.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/aware/WifiAwareStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiAwareStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;,
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;,
        Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final AWARE_SEND_MESSAGE_TIMEOUT:J = 0x2710L

.field private static final AWARE_WAIT_FOR_DP_CONFIRM_TIMEOUT:J = 0x4e20L

.field private static final TRANSACTION_ID_IGNORE:I


# instance fields
.field private mCurrentCommand:Landroid/os/Message;

.field private mCurrentTransactionId:S

.field private final mDataPathConfirmTimeoutMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;",
            "Lcom/android/internal/util/WakeupMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

.field private final mFwQueuedSendMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final mHostQueuedSendMessages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public mNextSessionId:I

.field private mNextTransactionId:S

.field private mSendArrivalSequenceCounter:I

.field private mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

.field private mSendQueueBlocked:Z

.field private mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

.field private mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

.field final synthetic this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/aware/WifiAwareStateManager;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1213
    iput-object p1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    .line 1214
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1191
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    .line 1192
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    .line 1193
    new-instance v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;-><init>(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Lcom/android/server/wifi/aware/WifiAwareStateManager$1;)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    .line 1195
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    .line 1196
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    .line 1199
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1202
    iput v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    .line 1203
    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1204
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    .line 1205
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    .line 1206
    new-instance v0, Lcom/android/internal/util/WakeupMessage;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "WifiAwareStateManager HAL Send Message Timeout"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 1210
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    .line 1216
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1217
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1218
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDefaultState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1220
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1221
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processCommand(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitForResponseState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitForResponseState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)S
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    iget-short v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mWaitState:Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine$WaitState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processTimeout(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .line 1188
    invoke-direct {p0, p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processNotification(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->processSendMessageTimeout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;

    .line 1188
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    return-object v0
.end method

.method private processCommand(Landroid/os/Message;)Z
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 1545
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 1546
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processCommand: receiving a command (msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") but current (previous) command isn\'t null (prev_msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1553
    :cond_0
    iget-short v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    add-int/lit8 v3, v2, 0x1

    int-to-short v3, v3

    iput-short v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    iput-short v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1555
    const/4 v2, 0x1

    .line 1557
    .local v2, "waitForResponse":Z
    iget v3, v1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 1780
    :pswitch_0
    const/4 v2, 0x0

    .line 1781
    const-string v3, "WifiAwareStateManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processCommand: this isn\'t a COMMAND -- msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1776
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->awareIsDown()V

    .line 1777
    const/4 v2, 0x0

    .line 1778
    goto/16 :goto_1

    .line 1772
    :pswitch_2
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->releaseAware()V

    .line 1773
    const/4 v2, 0x0

    .line 1774
    goto/16 :goto_1

    .line 1768
    :pswitch_3
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->tryToGetAware()V

    .line 1769
    const/4 v2, 0x0

    .line 1770
    goto/16 :goto_1

    .line 1764
    :pswitch_4
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeManager;->start(Landroid/os/Handler;)V

    .line 1765
    const/4 v2, 0x0

    .line 1766
    goto/16 :goto_1

    .line 1581
    :pswitch_5
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v3, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2800(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z

    move-result v2

    .line 1582
    goto/16 :goto_1

    .line 1652
    :pswitch_6
    iget-boolean v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 1664
    :cond_1
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1665
    .local v3, "sendMessage":Landroid/os/Message;
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1667
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 1668
    .local v5, "data":Landroid/os/Bundle;
    iget v13, v3, Landroid/os/Message;->arg2:I

    .line 1669
    .local v13, "clientId":I
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "session_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 1670
    .local v14, "sessionId":I
    const-string v6, "message_peer_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1671
    .local v15, "peerId":I
    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1672
    .local v16, "message":[B
    const-string v6, "message_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1674
    .local v17, "messageId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "send_message"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1676
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move v8, v13

    move v9, v14

    move v10, v15

    move-object/from16 v11, v16

    move/from16 v12, v17

    invoke-static/range {v6 .. v12}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3400(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIII[BI)Z

    move-result v2

    .line 1679
    .end local v3    # "sendMessage":Landroid/os/Message;
    .end local v5    # "data":Landroid/os/Bundle;
    .end local v13    # "clientId":I
    .end local v14    # "sessionId":I
    .end local v15    # "peerId":I
    .end local v16    # "message":[B
    .end local v17    # "messageId":I
    goto/16 :goto_1

    .line 1657
    :cond_2
    :goto_0
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1761
    :pswitch_7
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z

    move-result v2

    .line 1762
    goto/16 :goto_1

    .line 1746
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1748
    .local v3, "data":Landroid/os/Bundle;
    iget v13, v1, Landroid/os/Message;->arg2:I

    .line 1749
    .local v13, "ndpId":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1750
    .local v14, "accept":Z
    const-string v5, "interface_name"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1751
    .local v15, "interfaceName":Ljava/lang/String;
    const-string v5, "pmk"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1752
    .local v16, "pmk":[B
    const-string v5, "passphrase"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1753
    .local v17, "passphrase":Ljava/lang/String;
    const-string v5, "out_of_band"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 1755
    .local v18, "isOutOfBand":Z
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move v7, v14

    move v8, v13

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move/from16 v12, v18

    invoke-static/range {v5 .. v12}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SZILjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v2

    .line 1758
    goto/16 :goto_1

    .line 1717
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v13    # "ndpId":I
    .end local v14    # "accept":Z
    .end local v15    # "interfaceName":Ljava/lang/String;
    .end local v16    # "pmk":[B
    .end local v17    # "passphrase":Ljava/lang/String;
    .end local v18    # "isOutOfBand":Z
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 1719
    .restart local v3    # "data":Landroid/os/Bundle;
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 1722
    .local v5, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    const-string v6, "peer_id"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1723
    .local v17, "peerId":I
    const-string v6, "channel_request_type"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1724
    .local v18, "channelRequestType":I
    const-string v6, "channel"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 1725
    .local v19, "channel":I
    const-string v6, "mac_address"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v20

    .line 1726
    .local v20, "peer":[B
    const-string v6, "interface_name"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1727
    .local v21, "interfaceName":Ljava/lang/String;
    const-string v6, "pmk"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .line 1728
    .local v22, "pmk":[B
    const-string v6, "passphrase"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1729
    .local v23, "passphrase":Ljava/lang/String;
    const-string v6, "out_of_band"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    .line 1731
    .local v24, "isOutOfBand":Z
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move-object v8, v5

    move/from16 v9, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    move-object/from16 v14, v22

    move-object/from16 v15, v23

    move/from16 v16, v24

    invoke-static/range {v6 .. v16}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3900(Lcom/android/server/wifi/aware/WifiAwareStateManager;SLandroid/net/wifi/aware/WifiAwareNetworkSpecifier;III[BLjava/lang/String;[BLjava/lang/String;Z)Z

    move-result v2

    .line 1735
    if-eqz v2, :cond_4

    .line 1736
    new-instance v14, Lcom/android/internal/util/WakeupMessage;

    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v9, "WifiAwareStateManager HAL Data Path Confirm Timeout"

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v14

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1739
    .local v6, "timeout":Lcom/android/internal/util/WakeupMessage;
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1740
    nop

    .line 1741
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x4e20

    add-long/2addr v7, v9

    .line 1740
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1742
    .end local v6    # "timeout":Lcom/android/internal/util/WakeupMessage;
    goto/16 :goto_1

    .line 1713
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v5    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    .end local v17    # "peerId":I
    .end local v18    # "channelRequestType":I
    .end local v19    # "channel":I
    .end local v20    # "peer":[B
    .end local v21    # "interfaceName":Ljava/lang/String;
    .end local v22    # "pmk":[B
    .end local v23    # "passphrase":Ljava/lang/String;
    .end local v24    # "isOutOfBand":Z
    :pswitch_a
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3800(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v3

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->deleteAwareNetworkInterface(SLjava/lang/String;)Z

    move-result v2

    .line 1715
    goto/16 :goto_1

    .line 1709
    :pswitch_b
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3800(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v3

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->createAwareNetworkInterface(SLjava/lang/String;)Z

    move-result v2

    .line 1711
    goto/16 :goto_1

    .line 1705
    :pswitch_c
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, v3, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->deleteAllInterfaces()V

    .line 1706
    const/4 v2, 0x0

    .line 1707
    goto/16 :goto_1

    .line 1701
    :pswitch_d
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, v3, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    invoke-virtual {v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->createAllInterfaces()V

    .line 1702
    const/4 v2, 0x0

    .line 1703
    goto/16 :goto_1

    .line 1689
    :pswitch_e
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3700(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/Capabilities;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1690
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3800(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Lcom/android/server/wifi/aware/WifiAwareNativeApi;

    move-result-object v3

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v3, v5}, Lcom/android/server/wifi/aware/WifiAwareNativeApi;->getCapabilities(S)Z

    move-result v2

    goto/16 :goto_1

    .line 1697
    :cond_3
    const/4 v2, 0x0

    .line 1699
    goto/16 :goto_1

    .line 1686
    :pswitch_f
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v3, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3600(Lcom/android/server/wifi/aware/WifiAwareStateManager;S)Z

    move-result v2

    .line 1687
    goto/16 :goto_1

    .line 1682
    :pswitch_10
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3500(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1683
    const/4 v2, 0x0

    .line 1684
    goto/16 :goto_1

    .line 1637
    :pswitch_11
    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1638
    .local v3, "sendMsg":Landroid/os/Message;
    invoke-virtual {v3, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1639
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message_arrival_seq"

    iget v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1641
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    iget v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1642
    iget v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    .line 1643
    const/4 v2, 0x0

    .line 1645
    iget-boolean v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v5, :cond_4

    .line 1646
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto/16 :goto_1

    .line 1623
    .end local v3    # "sendMsg":Landroid/os/Message;
    :pswitch_12
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1624
    .local v3, "clientId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "session_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1625
    .local v5, "sessionId":I
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/aware/SubscribeConfig;

    .line 1627
    .local v6, "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v7, v8, v3, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3300(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/SubscribeConfig;)Z

    move-result v2

    .line 1629
    goto/16 :goto_1

    .line 1612
    .end local v3    # "clientId":I
    .end local v5    # "sessionId":I
    .end local v6    # "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    :pswitch_13
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1613
    .restart local v3    # "clientId":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 1615
    .local v5, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "config"

    .line 1616
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/aware/SubscribeConfig;

    .line 1618
    .restart local v6    # "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v7, v8, v3, v6, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3200(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v2

    .line 1620
    goto/16 :goto_1

    .line 1603
    .end local v3    # "clientId":I
    .end local v5    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v6    # "subscribeConfig":Landroid/net/wifi/aware/SubscribeConfig;
    :pswitch_14
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1604
    .restart local v3    # "clientId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "session_id"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1605
    .local v5, "sessionId":I
    iget-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/wifi/aware/PublishConfig;

    .line 1607
    .local v6, "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v7, v8, v3, v5, v6}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3100(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIILandroid/net/wifi/aware/PublishConfig;)Z

    move-result v2

    .line 1609
    goto/16 :goto_1

    .line 1592
    .end local v3    # "clientId":I
    .end local v5    # "sessionId":I
    .end local v6    # "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    :pswitch_15
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1593
    .restart local v3    # "clientId":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .line 1595
    .local v5, "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "config"

    .line 1596
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/aware/PublishConfig;

    .line 1598
    .restart local v6    # "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v7, v8, v3, v6, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$3000(Lcom/android/server/wifi/aware/WifiAwareStateManager;SILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)Z

    move-result v2

    .line 1600
    goto :goto_1

    .line 1584
    .end local v3    # "clientId":I
    .end local v5    # "callback":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .end local v6    # "publishConfig":Landroid/net/wifi/aware/PublishConfig;
    :pswitch_16
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1585
    .restart local v3    # "clientId":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1587
    .local v5, "sessionId":I
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v6, v3, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II)V

    .line 1588
    const/4 v2, 0x0

    .line 1589
    goto :goto_1

    .line 1575
    .end local v3    # "clientId":I
    .end local v5    # "sessionId":I
    :pswitch_17
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1577
    .restart local v3    # "clientId":I
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v5, v6, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2700(Lcom/android/server/wifi/aware/WifiAwareStateManager;SI)Z

    move-result v2

    .line 1578
    goto :goto_1

    .line 1559
    .end local v3    # "clientId":I
    :pswitch_18
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1560
    .restart local v3    # "clientId":I
    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .line 1561
    .local v14, "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "config"

    .line 1562
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/net/wifi/aware/ConfigRequest;

    .line 1563
    .local v15, "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "uid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1564
    .local v16, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "pid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1565
    .local v17, "pid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "calling_package"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1567
    .local v18, "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "notify_identity_chg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 1570
    .local v19, "notifyIdentityChange":Z
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-short v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    move v7, v3

    move/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v18

    move-object v11, v14

    move-object v12, v15

    move/from16 v13, v19

    invoke-static/range {v5 .. v13}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2600(Lcom/android/server/wifi/aware/WifiAwareStateManager;SIIILjava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)Z

    move-result v2

    .line 1572
    nop

    .line 1785
    .end local v3    # "clientId":I
    .end local v14    # "callback":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v15    # "configRequest":Landroid/net/wifi/aware/ConfigRequest;
    .end local v16    # "uid":I
    .end local v17    # "pid":I
    .end local v18    # "callingPackage":Ljava/lang/String;
    .end local v19    # "notifyIdentityChange":Z
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 1786
    iput-short v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    goto :goto_2

    .line 1788
    :cond_5
    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1789
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v3, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1792
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processNotification(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 1363
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1528
    const-string v2, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processNotification: this isn\'t a NOTIFICATION -- msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void

    .line 1522
    :pswitch_0
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    .line 1523
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "mac_address"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1524
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ndp_ids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    .line 1522
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathSchedUpdate([BLjava/util/List;Ljava/util/List;)V

    .line 1526
    goto/16 :goto_2

    .line 1519
    :pswitch_1
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v3, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathEnd(I)V

    .line 1520
    goto/16 :goto_2

    .line 1501
    :pswitch_2
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v4, v1, Landroid/os/Message;->arg2:I

    .line 1502
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "mac_address"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1503
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "success_flag"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1504
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "status_code"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1505
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v8, "message_data"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 1501
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathConfirm(I[BZI[BLjava/util/List;)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v2

    .line 1508
    .local v2, "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    if-eqz v2, :cond_4

    .line 1509
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/WakeupMessage;

    .line 1511
    .local v3, "timeout":Lcom/android/internal/util/WakeupMessage;
    if-eqz v3, :cond_0

    .line 1512
    invoke-virtual {v3}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1514
    .end local v3    # "timeout":Lcom/android/internal/util/WakeupMessage;
    :cond_0
    goto/16 :goto_2

    .line 1485
    .end local v2    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    :pswitch_3
    iget-object v2, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, v2, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDataPathMgr:Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;

    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 1486
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mac_address"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 1487
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1485
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareDataPathStateManager;->onDataPathRequest(I[BI)Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    move-result-object v2

    .line 1489
    .restart local v2    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    if-eqz v2, :cond_4

    .line 1490
    new-instance v3, Lcom/android/internal/util/WakeupMessage;

    iget-object v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$600(Lcom/android/server/wifi/aware/WifiAwareStateManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v9, "WifiAwareStateManager HAL Data Path Confirm Timeout"

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v3

    move-object v13, v2

    invoke-direct/range {v6 .. v13}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;IIILjava/lang/Object;)V

    .line 1493
    .restart local v3    # "timeout":Lcom/android/internal/util/WakeupMessage;
    iget-object v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mDataPathConfirmTimeoutMessages:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    nop

    .line 1495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x4e20

    add-long/2addr v4, v6

    .line 1494
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1496
    .end local v3    # "timeout":Lcom/android/internal/util/WakeupMessage;
    goto/16 :goto_2

    .line 1445
    .end local v2    # "networkSpecifier":Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;
    :pswitch_4
    iget v2, v1, Landroid/os/Message;->arg2:I

    int-to-short v2, v2

    .line 1446
    .local v2, "transactionId":S
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1447
    .local v4, "reason":I
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1452
    .local v5, "sentMessage":Landroid/os/Message;
    if-nez v5, :cond_1

    .line 1453
    const-string v3, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_FAIL: transactionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - no such queued send command (timed-out?)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1458
    :cond_1
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    .line 1461
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "retry_count"

    .line 1462
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1463
    .local v6, "retryCount":I
    if-lez v6, :cond_2

    const/16 v7, 0x9

    if-ne v4, v7, :cond_2

    .line 1470
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "retry_count"

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    invoke-virtual {v5}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "message_arrival_seq"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1475
    .local v7, "arrivalSeq":I
    iget-object v8, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1476
    .end local v7    # "arrivalSeq":I
    goto :goto_0

    .line 1477
    :cond_2
    iget-object v7, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v7, v5, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1479
    :goto_0
    iput-boolean v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1480
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1482
    .end local v6    # "retryCount":I
    goto/16 :goto_2

    .line 1423
    .end local v2    # "transactionId":S
    .end local v4    # "reason":I
    .end local v5    # "sentMessage":Landroid/os/Message;
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg2:I

    int-to-short v2, v2

    .line 1424
    .restart local v2    # "transactionId":S
    iget-object v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 1429
    .local v4, "queuedSendCommand":Landroid/os/Message;
    if-nez v4, :cond_3

    .line 1430
    const-string v5, "WifiAwareStateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processNotification: NOTIFICATION_TYPE_ON_MESSAGE_SEND_SUCCESS: transactionId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " - no such queued send command (timed-out?)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1435
    :cond_3
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    .line 1437
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V

    .line 1439
    :goto_1
    iput-boolean v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1440
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1442
    goto/16 :goto_2

    .line 1410
    .end local v2    # "transactionId":S
    .end local v4    # "queuedSendCommand":Landroid/os/Message;
    :pswitch_6
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1418
    .local v2, "reason":I
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2200(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1420
    goto/16 :goto_2

    .line 1401
    .end local v2    # "reason":I
    :pswitch_7
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1402
    .local v2, "pubSubId":I
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1403
    .local v3, "requestorInstanceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mac_address"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1404
    .local v4, "peerMac":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message_data"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1406
    .local v5, "message":[B
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2100(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B)V

    .line 1407
    goto/16 :goto_2

    .line 1393
    .end local v2    # "pubSubId":I
    .end local v3    # "requestorInstanceId":I
    .end local v4    # "peerMac":[B
    .end local v5    # "message":[B
    :pswitch_8
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1394
    .restart local v2    # "pubSubId":I
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1395
    .local v3, "reason":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "session_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1397
    .local v4, "isPublish":Z
    iget-object v5, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5, v2, v4, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2000(Lcom/android/server/wifi/aware/WifiAwareStateManager;IZI)V

    .line 1398
    goto :goto_2

    .line 1378
    .end local v2    # "pubSubId":I
    .end local v3    # "reason":I
    .end local v4    # "isPublish":Z
    :pswitch_9
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1379
    .restart local v2    # "pubSubId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "req_instance_id"

    .line 1380
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1381
    .local v3, "requestorInstanceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "mac_address"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 1382
    .local v4, "peerMac":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "ssi_data"

    .line 1383
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 1384
    .local v5, "serviceSpecificInfo":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "filter_data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 1385
    .local v14, "matchFilter":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "ranging_indication"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 1386
    .local v15, "rangingIndication":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "range_mm"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1388
    .local v16, "rangeMm":I
    iget-object v6, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v14

    move v12, v15

    move/from16 v13, v16

    invoke-static/range {v6 .. v13}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$1900(Lcom/android/server/wifi/aware/WifiAwareStateManager;II[B[B[BII)V

    .line 1390
    goto :goto_2

    .line 1371
    .end local v2    # "pubSubId":I
    .end local v3    # "requestorInstanceId":I
    .end local v4    # "peerMac":[B
    .end local v5    # "serviceSpecificInfo":[B
    .end local v14    # "matchFilter":[B
    .end local v15    # "rangingIndication":I
    .end local v16    # "rangeMm":I
    :pswitch_a
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 1372
    .local v2, "flag":I
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    .line 1374
    .local v3, "clusterId":[B
    iget-object v4, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v4, v2, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$1800(Lcom/android/server/wifi/aware/WifiAwareStateManager;I[B)V

    .line 1375
    goto :goto_2

    .line 1365
    .end local v2    # "flag":I
    .end local v3    # "clusterId":[B
    :pswitch_b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    .line 1367
    .local v2, "mac":[B
    iget-object v3, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$1700(Lcom/android/server/wifi/aware/WifiAwareStateManager;[B)V

    .line 1368
    nop

    .line 1531
    .end local v2    # "mac":[B
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processResponse(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1800
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1801
    const-string v0, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: no existing command stored!? msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1803
    return-void

    .line 1806
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1909
    const-string v0, "WifiAwareStateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processResponse: this isn\'t a RESPONSE -- msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1911
    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1912
    return-void

    .line 1906
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1907
    goto/16 :goto_0

    .line 1901
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1902
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "success_flag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1903
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "status_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1901
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1904
    goto/16 :goto_0

    .line 1896
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1897
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "success_flag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1898
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "status_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1896
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5200(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1899
    goto/16 :goto_0

    .line 1893
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5100(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1894
    goto/16 :goto_0

    .line 1890
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5000(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1891
    goto/16 :goto_0

    .line 1885
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1886
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "success_flag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1887
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "status_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1885
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4900(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1888
    goto/16 :goto_0

    .line 1880
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1881
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "success_flag"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1882
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "status_code"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1880
    invoke-static {v0, v3, v4, v5}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4800(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1883
    goto/16 :goto_0

    .line 1876
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/wifi/aware/Capabilities;

    invoke-static {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4700(Lcom/android/server/wifi/aware/WifiAwareStateManager;Lcom/android/server/wifi/aware/Capabilities;)V

    .line 1877
    goto/16 :goto_0

    .line 1852
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1853
    .local v0, "reason":I
    const/16 v3, 0xb

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    .line 1854
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "send_message"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1856
    .local v3, "sentMessage":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message_arrival_seq"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1858
    .local v5, "arrivalSeq":I
    iget-object v6, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1859
    iput-boolean v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1865
    .end local v3    # "sentMessage":Landroid/os/Message;
    .end local v5    # "arrivalSeq":I
    goto/16 :goto_0

    .line 1866
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "send_message"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 1868
    .restart local v3    # "sentMessage":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v5, v3, v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1869
    iget-boolean v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v4, :cond_2

    .line 1870
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1873
    .end local v3    # "sentMessage":Landroid/os/Message;
    :cond_2
    goto/16 :goto_0

    .line 1831
    .end local v0    # "reason":I
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "send_message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1833
    .local v0, "sentMessage":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message_queue_time"

    .line 1834
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1833
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1835
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    iget-short v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    .line 1837
    iget-boolean v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    if-nez v3, :cond_3

    .line 1838
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    goto :goto_0

    .line 1824
    .end local v0    # "sentMessage":Landroid/os/Message;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1825
    .local v0, "reason":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "session_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1827
    .local v3, "isPublish":Z
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v4, v5, v3, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1828
    goto :goto_0

    .line 1817
    .end local v0    # "reason":I
    .end local v3    # "isPublish":Z
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 1818
    .local v0, "pubSubId":B
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "session_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1820
    .restart local v3    # "isPublish":Z
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v5, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v4, v5, v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;BZ)V

    .line 1821
    goto :goto_0

    .line 1811
    .end local v0    # "pubSubId":B
    .end local v3    # "isPublish":Z
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1813
    .local v0, "reason":I
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v3, v4, v0}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1814
    goto :goto_0

    .line 1808
    .end local v0    # "reason":I
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;)V

    .line 1809
    nop

    .line 1915
    :cond_3
    :goto_0
    iput-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 1916
    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1917
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processSendMessageTimeout()V
    .locals 12

    .line 2073
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-boolean v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 2074
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSendMessageTimeout: mHostQueuedSendMessages.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    .line 2075
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mFwQueuedSendMessages.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    .line 2076
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSendQueueBlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2074
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    :cond_0
    const/4 v0, 0x1

    .line 2086
    .local v0, "first":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2087
    .local v1, "currentTime":J
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2088
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Short;Landroid/os/Message;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2089
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2090
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Landroid/os/Message;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Short;

    invoke-virtual {v5}, Ljava/lang/Short;->shortValue()S

    move-result v5

    .line 2091
    .local v5, "transactionId":S
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 2092
    .local v6, "message":Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "message_queue_time"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2094
    .local v7, "messageEnqueueTime":J
    if-nez v0, :cond_1

    const-wide/16 v9, 0x2710

    add-long/2addr v9, v7

    cmp-long v9, v9, v1

    if-gtz v9, :cond_3

    .line 2095
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-boolean v9, v9, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v9, :cond_2

    .line 2096
    const-string v9, "WifiAwareStateManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "processSendMessageTimeout: expiring - transactionId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", message="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", due to messageEnqueueTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", currentTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    :cond_2
    iget-object v9, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    const/4 v10, 0x1

    invoke-static {v9, v6, v10}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 2102
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 2103
    const/4 v0, 0x0

    .line 2107
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Short;Landroid/os/Message;>;"
    .end local v5    # "transactionId":S
    .end local v6    # "message":Landroid/os/Message;
    .end local v7    # "messageEnqueueTime":J
    goto :goto_0

    .line 2108
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->updateSendMessageTimeout()V

    .line 2109
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 2110
    iget-object v4, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v4}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 2111
    return-void
.end method

.method private processTimeout(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1920
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-boolean v0, v0, Lcom/android/server/wifi/aware/WifiAwareStateManager;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1921
    const-string v0, "WifiAwareStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTimeout: msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1925
    const-string v0, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processTimeout: no existing command stored!? msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 1927
    return-void

    .line 1933
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2042
    :pswitch_0
    const-string v0, "WifiAwareStateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processTimeout: this isn\'t a COMMAND -- msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2038
    :pswitch_1
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: COMMAND_TYPE_MAKE_AWARE_DOWN - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    goto/16 :goto_0

    .line 2034
    :pswitch_2
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: COMMAND_TYPE_RELEASE_AWARE - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    goto/16 :goto_0

    .line 2030
    :pswitch_3
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: COMMAND_TYPE_GET_AWARE - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    goto/16 :goto_0

    .line 2025
    :pswitch_4
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: COMMAND_TYPE_DELAYED_INITIALIZATION - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    goto/16 :goto_0

    .line 1947
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1948
    goto/16 :goto_0

    .line 1976
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "send_message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1978
    .local v0, "sentMessage":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v3, v0, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2500(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1979
    iput-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1980
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    invoke-static {v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$2400(Lcom/android/server/wifi/aware/WifiAwareStateManager;)V

    .line 1981
    goto/16 :goto_0

    .line 2022
    .end local v0    # "sentMessage":Landroid/os/Message;
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v2, v1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5300(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 2023
    goto/16 :goto_0

    .line 2018
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v2, v1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5200(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 2019
    goto/16 :goto_0

    .line 2014
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v2, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5100(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 2015
    goto/16 :goto_0

    .line 2010
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v2, v1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4900(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 2011
    goto/16 :goto_0

    .line 2006
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v2, v1, v1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4800(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 2007
    goto/16 :goto_0

    .line 2000
    :pswitch_c
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: DELETE_ALL_DATA_PATH_INTERFACES - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    goto :goto_0

    .line 1995
    :pswitch_d
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: CREATE_ALL_DATA_PATH_INTERFACES - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    goto :goto_0

    .line 1990
    :pswitch_e
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: GET_CAPABILITIES timed-out - strange, will try again when next enabled!?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    goto :goto_0

    .line 1987
    :pswitch_f
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: DISABLE_USAGE - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    goto :goto_0

    .line 1984
    :pswitch_10
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: ENABLE_USAGE - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    goto :goto_0

    .line 1972
    :pswitch_11
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: ENQUEUE_SEND_MESSAGE - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    goto :goto_0

    .line 1967
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1969
    goto :goto_0

    .line 1962
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1964
    goto :goto_0

    .line 1958
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v2, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1959
    goto :goto_0

    .line 1954
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v2, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4600(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;ZI)V

    .line 1955
    goto :goto_0

    .line 1950
    :pswitch_16
    const-string v0, "WifiAwareStateManager"

    const-string v2, "processTimeout: TERMINATE_SESSION - shouldn\'t be waiting!"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    goto :goto_0

    .line 1939
    :pswitch_17
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1940
    goto :goto_0

    .line 1935
    :pswitch_18
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->this$0:Lcom/android/server/wifi/aware/WifiAwareStateManager;

    iget-object v3, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-static {v0, v3, v2}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$4400(Lcom/android/server/wifi/aware/WifiAwareStateManager;Landroid/os/Message;I)V

    .line 1936
    nop

    .line 2046
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    .line 2047
    iput-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    .line 2048
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSendMessageTimeout()V
    .locals 7

    .line 2057
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2058
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2063
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 2064
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    .line 2065
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "message_queue_time"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    .line 2064
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 2067
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 2068
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendMessageTimeoutMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v1}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 2070
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2127
    const-string v0, "WifiAwareStateMachine:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNextTransactionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextTransactionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNextSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mNextSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentCommand:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentTransaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSendQueueBlocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSendArrivalSequenceCounter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendArrivalSequenceCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHostQueuedSendMessages: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFwQueuedSendMessages: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2137
    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wifi/aware/WifiAwareStateManager;->access$5500(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2117
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    if-eqz v1, :cond_0

    .line 2119
    const-string v1, " (Transaction ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mCurrentTransactionId:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAwareDownCleanupSendQueueState()V
    .locals 1

    .line 1224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mSendQueueBlocked:Z

    .line 1225
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mHostQueuedSendMessages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1226
    iget-object v0, p0, Lcom/android/server/wifi/aware/WifiAwareStateManager$WifiAwareStateMachine;->mFwQueuedSendMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1227
    return-void
.end method
