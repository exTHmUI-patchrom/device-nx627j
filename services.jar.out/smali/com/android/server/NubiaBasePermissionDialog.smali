.class public Lcom/android/server/NubiaBasePermissionDialog;
.super Landroid/app/AlertDialog;
.source "NubiaBasePermissionDialog.java"


# static fields
.field private static DIALOG_COUNT:I

.field private static IS_SHOW:Z

.field private static LAST_SHOW_TIME:J


# instance fields
.field private mConsuming:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/NubiaBasePermissionDialog;->IS_SHOW:Z

    .line 39
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/NubiaBasePermissionDialog;->LAST_SHOW_TIME:J

    .line 40
    sput v0, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    const v0, 0x30e0007

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 115
    new-instance v0, Lcom/android/server/NubiaBasePermissionDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaBasePermissionDialog$2;-><init>(Lcom/android/server/NubiaBasePermissionDialog;)V

    iput-object v0, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 46
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/NubiaBasePermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 50
    new-instance v0, Lcom/android/server/NubiaBasePermissionDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/NubiaBasePermissionDialog$1;-><init>(Lcom/android/server/NubiaBasePermissionDialog;)V

    invoke-virtual {p0, v0}, Lcom/android/server/NubiaBasePermissionDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Z)V
    .locals 0
    .param p0, "x0"    # Z

    .line 36
    invoke-static {p0}, Lcom/android/server/NubiaBasePermissionDialog;->setShow(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/NubiaBasePermissionDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaBasePermissionDialog;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NubiaBasePermissionDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NubiaBasePermissionDialog;
    .param p1, "x1"    # Z

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/NubiaBasePermissionDialog;->setEnabled(Z)V

    return-void
.end method

.method public static declared-synchronized isShow()Z
    .locals 5

    const-class v0, Lcom/android/server/NubiaBasePermissionDialog;

    monitor-enter v0

    .line 59
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/android/server/NubiaBasePermissionDialog;->LAST_SHOW_TIME:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4650

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 60
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/NubiaBasePermissionDialog;->IS_SHOW:Z

    .line 61
    sput v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    .line 63
    :cond_0
    sget-boolean v1, Lcom/android/server/NubiaBasePermissionDialog;->IS_SHOW:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 101
    const v0, 0x1020019

    invoke-virtual {p0, v0}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    .local v0, "b":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    :cond_0
    const v1, 0x102001a

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 106
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    :cond_1
    const v1, 0x102001b

    invoke-virtual {p0, v1}, Lcom/android/server/NubiaBasePermissionDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 110
    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    :cond_2
    return-void
.end method

.method private static declared-synchronized setShow(Z)V
    .locals 3
    .param p0, "show"    # Z

    const-class v0, Lcom/android/server/NubiaBasePermissionDialog;

    monitor-enter v0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/NubiaBasePermissionDialog;->LAST_SHOW_TIME:J

    .line 69
    sget v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    goto :goto_0

    .line 66
    .end local p0    # "show":Z
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 71
    .restart local p0    # "show":Z
    :cond_0
    sget v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I

    .line 72
    sget v1, Lcom/android/server/NubiaBasePermissionDialog;->DIALOG_COUNT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    .line 73
    monitor-exit v0

    return-void

    .line 76
    :cond_1
    :goto_0
    :try_start_1
    sput-boolean p0, Lcom/android/server/NubiaBasePermissionDialog;->IS_SHOW:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit v0

    return-void

    .line 66
    .end local p0    # "show":Z
    :goto_1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 92
    iget-boolean v0, p0, Lcom/android/server/NubiaBasePermissionDialog;->mConsuming:Z

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 86
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/NubiaBasePermissionDialog;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/NubiaBasePermissionDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    return-void
.end method

.method public show()V
    .locals 1

    .line 81
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/NubiaBasePermissionDialog;->setShow(Z)V

    .line 82
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 83
    return-void
.end method
