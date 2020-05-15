.class final Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService$StartInputHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field mClientBindSequenceNumber:I

.field mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mImeId:Ljava/lang/String;

.field mImeTokenString:Ljava/lang/String;

.field mRestarting:Z

.field mSequenceNumber:I

.field mStartInputReason:I

.field mTargetWindowSoftInputMode:I

.field mTargetWindowString:Ljava/lang/String;

.field mTimestamp:J

.field mWallTime:J


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V
    .locals 0
    .param p1, "original"    # Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    invoke-virtual {p0, p1}, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->set(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V

    .line 755
    return-void
.end method


# virtual methods
.method set(Lcom/android/server/InputMethodManagerService$StartInputInfo;)V
    .locals 2
    .param p1, "original"    # Lcom/android/server/InputMethodManagerService$StartInputInfo;

    .line 758
    iget v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mSequenceNumber:I

    .line 759
    iget-wide v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTimestamp:J

    .line 760
    iget-wide v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mWallTime:J

    .line 763
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    .line 764
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    .line 765
    iget v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mStartInputReason:I

    .line 766
    iget-boolean v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mRestarting:Z

    .line 769
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    .line 770
    iget-object v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 771
    iget v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    .line 772
    iget v0, p1, Lcom/android/server/InputMethodManagerService$StartInputInfo;->mClientBindSequenceNumber:I

    iput v0, p0, Lcom/android/server/InputMethodManagerService$StartInputHistory$Entry;->mClientBindSequenceNumber:I

    .line 773
    return-void
.end method
