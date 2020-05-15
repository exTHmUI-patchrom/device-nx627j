.class public Lcom/android/internal/telephony/uicc/UiccSlot;
.super Landroid/os/Handler;
.source "UiccSlot.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CARD_ADDED:I = 0xe

.field private static final EVENT_CARD_REMOVED:I = 0xd

.field public static final EXTRA_ICC_CARD_ADDED:Ljava/lang/String; = "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

.field public static final INVALID_PHONE_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UiccSlot"


# instance fields
.field private mActive:Z

.field private mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mIccId:Ljava/lang/String;

.field private mIsEuicc:Z

.field private mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneId:I

.field private mStateIsUnknown:Z

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "isActive"    # Z

    .line 69
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 60
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 70
    const-string v0, "Creating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    .line 72
    iput-boolean p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 74
    return-void
.end method

.method private absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z
    .locals 2
    .param p1, "oldState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 163
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;
    .param p1, "x1"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccSlot;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccSlot;

    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkIsEuiccSupported()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isEuiccSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    goto :goto_0

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    .line 205
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 376
    const-string v0, "UiccSlot"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 380
    const-string v0, "UiccSlot"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method private nullifyUiccCard(Z)V
    .locals 1
    .param p1, "stateUnknown"    # Z

    .line 191
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 193
    return-void
.end method

.method private onIccSwap(Z)V
    .locals 2
    .param p1, "isAdded"    # Z

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 251
    .local v0, "isHotSwapSupported":Z
    if-eqz v0, :cond_0

    .line 252
    const-string v1, "onIccSwap: isHotSwapSupported is true, don\'t prompt for rebooting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 253
    return-void

    .line 255
    :cond_0
    const-string v1, "onIccSwap: isHotSwapSupported is false, prompt for rebooting"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->promptForRestart(Z)V

    .line 258
    return-void
.end method

.method private parseAtr(Ljava/lang/String;)V
    .locals 1
    .param p1, "atr"    # Ljava/lang/String;

    .line 208
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->parseAtr(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/AnswerToReset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-nez v0, :cond_0

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->checkIsEuiccSupported()V

    .line 213
    return-void
.end method

.method private promptForRestart(Z)V
    .locals 11
    .param p1, "isAdded"    # Z

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 263
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1040149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "dialogComponent":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 266
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 267
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.internal.telephony.uicc.ICC_CARD_ADDED"

    .line 268
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .local v3, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :try_start_2
    monitor-exit v0

    return-void

    .line 272
    :catch_0
    move-exception v4

    .line 273
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find ICC hotswap prompt for restart activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 281
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const/4 v3, 0x0

    .line 287
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccSlot$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccSlot$1;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    move-object v3, v4

    .line 302
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 304
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    const v5, 0x10405f1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 305
    :cond_1
    const v5, 0x10405f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "title":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const v6, 0x10405f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 307
    :cond_2
    const v6, 0x10405f3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 308
    .local v6, "message":Ljava/lang/String;
    :goto_1
    const v7, 0x10405f5

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, "buttonTxt":Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 312
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 313
    invoke-virtual {v8, v7, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 314
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 315
    .local v8, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 316
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 317
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "dialogComponent":Ljava/lang/String;
    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "message":Ljava/lang/String;
    .end local v7    # "buttonTxt":Ljava/lang/String;
    .end local v8    # "dialog":Landroid/app/AlertDialog;
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateCardStateAbsent()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    .line 171
    .local v0, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v3, :cond_1

    .line 172
    const-string v1, "update: notify card removed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 173
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 176
    :cond_1
    const-string v1, "ABSENT"

    iget v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 183
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 184
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 185
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 387
    const-string v0, "UiccSlot:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastRadioState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCardState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUiccCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_0
    const-string v0, " mUiccCard=null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    :goto_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 399
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 400
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 401
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 243
    const-string v0, "UiccSlot finalized"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-nez v1, :cond_0

    .line 341
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    monitor-exit v0

    return-object v1

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    return-object v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    return v0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v0

    return-object v1

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 322
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    .line 328
    goto :goto_0

    .line 324
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->onIccSwap(Z)V

    .line 325
    nop

    .line 332
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isActive()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    return v0
.end method

.method public isEuicc()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    return v0
.end method

.method public isExtendedApduSupported()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mAtr:Lcom/android/internal/telephony/uicc/AnswerToReset;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->isExtendedApduSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateUnknown()Z
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mStateIsUnknown:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRadioStateUnavailable()V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 364
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    .line 366
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 367
    const-string v0, "UNKNOWN"

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->updateInternalIccState(Ljava/lang/String;Ljava/lang/String;I)V

    .line 371
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 372
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 373
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;I)V
    .locals 10
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ics"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p3, "phoneId"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cardStatus update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 83
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 84
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 85
    iput p3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 86
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 87
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 89
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    .line 91
    .local v2, "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: radioState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mLastRadioState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    goto/16 :goto_0

    .line 100
    :cond_0
    if-eqz v1, :cond_1

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v3, v4, :cond_5

    .line 103
    sget-object v3, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v4, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v3, v4, :cond_2

    .line 104
    const-string v3, "update: notify card added"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 105
    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->sendMessage(Landroid/os/Message;)Z

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_3

    .line 110
    const-string v3, "update: mUiccCard != null when card was present; disposing it now"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccSlot;->loge(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 114
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIsEuicc:Z

    if-nez v3, :cond_4

    .line 115
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v4, v3

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 117
    :cond_4
    new-instance v9, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    move-object v3, v9

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/euicc/EuiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;)V

    iput-object v9, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    goto :goto_0

    .line 120
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v3, :cond_6

    .line 121
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    .line 124
    :cond_6
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 125
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .end local v2    # "radioState":Lcom/android/internal/telephony/CommandsInterface$RadioState;
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccSlotStatus;)V
    .locals 5
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "iss"    # Lcom/android/internal/telephony/uicc/IccSlotStatus;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slotStatus update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 135
    .local v1, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 136
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->atr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccSlot;->parseAtr(Ljava/lang/String;)V

    .line 137
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->cardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 138
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->iccid:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mIccId:Ljava/lang/String;

    .line 139
    iget-object v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->slotState:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;->SLOTSTATE_INACTIVE:Lcom/android/internal/telephony/uicc/IccSlotStatus$SlotState;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    .line 142
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    if-eqz v2, :cond_2

    .line 143
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 144
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mLastRadioState:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 146
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    .line 147
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccSlot;->nullifyUiccCard(Z)V

    goto :goto_0

    .line 150
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mActive:Z

    .line 151
    iget v2, p2, Lcom/android/internal/telephony/uicc/IccSlotStatus;->logicalSlotIndex:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UiccSlot;->mPhoneId:I

    .line 152
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->absentStateUpdateNeeded(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccSlot;->updateCardStateAbsent()V

    .line 159
    .end local v1    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
