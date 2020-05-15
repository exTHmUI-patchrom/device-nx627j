.class public Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;
.super Landroid/os/Handler;
.source "QtiSmscHelper.java"


# static fields
.field private static final EVENT_GET_SMSC:I = 0x2

.field private static final EVENT_SET_SMSC:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "QtiSmscHelper"

.field private static final PHONE_COUNT:I


# instance fields
.field private mGetLock:Ljava/lang/Object;

.field private final mPhones:[Lcom/android/internal/telephony/Phone;

.field private mSetLock:Ljava/lang/Object;

.field private final mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile mSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    .line 38
    return-void
.end method

.method private isValidPhoneId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 102
    if-ltz p1, :cond_0

    sget v0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->PHONE_COUNT:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getSmscAddress(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "QtiSmscHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phone id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 97
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 42
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_4

    .line 44
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 46
    const-string v2, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smsc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mGetLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 50
    monitor-exit v1

    .line 51
    goto :goto_4

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 53
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    .line 56
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 54
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    .line 55
    iget-object v2, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 56
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 59
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSmscAddress(ILjava/lang/String;)Z
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "QtiSmscHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid phone id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "QtiSmscHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the same smsc is there on phone = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    monitor-exit v0

    return v2

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, p1

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3}, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSetLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 79
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSmscArray:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 80
    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/qti/internal/telephony/QtiSmscHelper;->mSuccess:Z

    monitor-exit v0

    return v1

    .line 81
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
