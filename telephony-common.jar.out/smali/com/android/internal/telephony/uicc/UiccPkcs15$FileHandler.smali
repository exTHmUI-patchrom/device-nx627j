.class Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileHandler"
.end annotation


# static fields
.field protected static final EVENT_READ_BINARY_DONE:I = 0x66

.field protected static final EVENT_SELECT_FILE_DONE:I = 0x65


# instance fields
.field private mCallback:Landroid/os/Message;

.field private mFileId:Ljava/lang/String;

.field private final mPkcs15Path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V
    .locals 1
    .param p2, "pkcs15Path"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating FileHandler, pkcs15Path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 69
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mPkcs15Path:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private readBinary()V
    .locals 10

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xb0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/16 v0, 0x66

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 92
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 95
    :cond_0
    const-string v0, "EF based"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void
.end method

.method private selectFile()V
    .locals 10

    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;

    move-result-object v1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xa4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    const/16 v0, 0x65

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 83
    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "EF based"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 103
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 117
    .local v1, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "result":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IccIoResult: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    if-nez v3, :cond_1

    .line 121
    new-instance v2, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: null response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    nop

    .line 120
    :cond_1
    invoke-static {v4, v3, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 122
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 123
    goto :goto_0

    .line 112
    .end local v1    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->readBinary()V

    .line 113
    nop

    .line 128
    :goto_0
    return-void

    .line 104
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 106
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 107
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loadFile(Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "callBack"    # Landroid/os/Message;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->access$000(Ljava/lang/String;)V

    .line 74
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mFileId:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->mCallback:Landroid/os/Message;

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->selectFile()V

    .line 78
    const/4 v0, 0x1

    return v0

    .line 74
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
