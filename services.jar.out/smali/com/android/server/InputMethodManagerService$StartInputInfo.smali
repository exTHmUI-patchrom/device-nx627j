.class Lcom/android/server/InputMethodManagerService$StartInputInfo;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartInputInfo"
.end annotation


# static fields
.field private static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field final mClientBindSequenceNumber:I

.field final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mImeId:Ljava/lang/String;

.field final mImeToken:Landroid/os/IBinder;

.field final mRestarting:Z

.field final mSequenceNumber:I

.field final mStartInputReason:I

.field final mTargetWindow:Landroid/os/IBinder;

.field final mTargetWindowSoftInputMode:I

.field final mTimestamp:J

.field final mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 653
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .locals 2
    .param p1, "imeToken"    # Landroid/os/IBinder;
    .param p2, "imeId"    # Ljava/lang/String;
    .param p3, "startInputReason"    # I
    .param p4, "restarting"    # Z
    .param p5, "targetWindow"    # Landroid/os/IBinder;
    .param p6, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p7, "targetWindowSoftInputMode"    # I
    .param p8, "clientBindSequenceNumber"    # I

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    sget-object v0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    .line 677
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mWallTime:J

    .line 679
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    .line 680
    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    .line 681
    iput p3, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    .line 682
    iput-boolean p4, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    .line 683
    iput-object p5, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    .line 684
    iput-object p6, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 685
    iput p7, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    .line 686
    iput p8, p0, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    .line 687
    return-void
.end method
