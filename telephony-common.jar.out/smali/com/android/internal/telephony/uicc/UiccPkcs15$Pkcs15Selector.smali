.class Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pkcs15Selector"
.end annotation


# static fields
.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xc9

.field private static final PKCS15_AID:Ljava/lang/String; = "A000000063504B43532D3135"


# instance fields
.field private mCallback:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V
    .locals 3
    .param p2, "callBack"    # Landroid/os/Message;

    .line 136
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    .line 139
    const/4 v0, 0x4

    .line 140
    .local v0, "p2":I
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object p1

    const-string v1, "A000000063504B43532D3135"

    .line 141
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 140
    invoke-virtual {p1, v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccOpenLogicalChannel(Ljava/lang/String;ILandroid/os/Message;)V

    .line 142
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 149
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$102(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChannelId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-static {v1, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0

    .line 157
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 161
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 162
    nop

    .line 167
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :goto_1
    return-void
.end method
