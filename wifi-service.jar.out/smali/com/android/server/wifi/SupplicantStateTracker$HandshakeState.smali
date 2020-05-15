.class Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HandshakeState"
.end annotation


# static fields
.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4


# instance fields
.field private mLoopDetectCount:I

.field private mLoopDetectIndex:I

.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .line 319
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 330
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 332
    iput v0, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 333
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .line 336
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SupplicantStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x24006

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 361
    return v2

    .line 339
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wifi/StateChangeResult;

    .line 340
    .local v0, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v1, v0, Lcom/android/server/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 341
    .local v1, "state":Landroid/net/wifi/SupplicantState;
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isHandshakeState(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_2

    .line 343
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    .line 345
    :cond_2
    iget v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectCount:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 346
    const-string v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Supplicant loop detected, disabling network "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v0, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    const/4 v5, 0x3

    invoke-static {v2, v3, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$800(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 352
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->mLoopDetectIndex:I

    .line 353
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget-object v3, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    .line 354
    invoke-static {v3}, Lcom/android/server/wifi/SupplicantStateTracker;->access$100(Lcom/android/server/wifi/SupplicantStateTracker;)Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/wifi/SupplicantStateTracker$HandshakeState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$200(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v5

    .line 353
    invoke-static {v2, v1, v3, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->access$300(Lcom/android/server/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;ZI)V

    .line 363
    .end local v0    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    .end local v1    # "state":Landroid/net/wifi/SupplicantState;
    return v4

    .line 357
    .restart local v0    # "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    .restart local v1    # "state":Landroid/net/wifi/SupplicantState;
    :cond_4
    return v2
.end method
