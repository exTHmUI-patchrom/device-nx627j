.class public Lcom/android/internal/app/DumpHeapActivity;
.super Landroid/app/Activity;
.source "DumpHeapActivity.java"


# static fields
.field public static final ACTION_DELETE_DUMPHEAP:Ljava/lang/String; = "com.android.server.am.DELETE_DUMPHEAP"

.field public static final EXTRA_DELAY_DELETE:Ljava/lang/String; = "delay_delete"

.field public static final JAVA_URI:Landroid/net/Uri;

.field public static final KEY_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field public static final KEY_PROCESS:Ljava/lang/String; = "process"

.field public static final KEY_SIZE:Ljava/lang/String; = "size"


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mHandled:Z

.field mProcess:Ljava/lang/String;

.field mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "content://com.android.server.heapdump/java"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "process"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "size"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    .line 63
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_launch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "directLaunch":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 65
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.REPORT_HEAP_LIMIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "Heap Dump"

    sget-object v6, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-static {v4, v5, v6}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v4

    .line 68
    .local v4, "clip":Landroid/content/ClipData;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 69
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v5, "android.intent.extra.STREAM"

    sget-object v6, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 73
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/internal/app/DumpHeapActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    .line 75
    iput-boolean v2, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    return-void

    .line 78
    :catch_0
    move-exception v5

    .line 79
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "DumpHeapActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to direct launch to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v5}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 79
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "clip":Landroid/content/ClipData;
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const v4, 0x103023a

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v3, "b":Landroid/app/AlertDialog$Builder;
    const v4, 0x10401ca

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 87
    const v4, 0x10401c9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mProcess:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-wide v6, p0, Lcom/android/internal/app/DumpHeapActivity;->mSize:J

    const/4 v1, 0x0

    .line 88
    invoke-static {v6, v7, v1}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v2

    .line 87
    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/DumpHeapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/internal/app/DumpHeapActivity$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/DumpHeapActivity$1;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const v1, 0x104000a

    new-instance v2, Lcom/android/internal/app/DumpHeapActivity$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/DumpHeapActivity$2;-><init>(Lcom/android/internal/app/DumpHeapActivity;)V

    invoke-virtual {v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 136
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/DumpHeapActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-boolean v0, p0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    :cond_0
    return-void
.end method

.method scheduleDelete()V
    .locals 3

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "delay_delete"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/internal/app/DumpHeapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    return-void
.end method
