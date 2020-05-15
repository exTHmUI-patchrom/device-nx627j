.class Lcom/android/internal/app/DumpHeapActivity$2;
.super Ljava/lang/Object;
.source "DumpHeapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/DumpHeapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/DumpHeapActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/DumpHeapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/DumpHeapActivity;

    .line 97
    iput-object p1, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 100
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/app/DumpHeapActivity;->mHandled:Z

    .line 101
    iget-object v0, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/DumpHeapActivity;->scheduleDelete()V

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/DumpHeapActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Heap Dump"

    sget-object v4, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-static {v2, v3, v4}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v2

    .line 104
    .local v2, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-virtual {v2}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "android.intent.extra.STREAM"

    sget-object v3, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    iget-object v3, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    .line 109
    const v4, 0x10401ca

    invoke-virtual {v3, v4}, Lcom/android/internal/app/DumpHeapActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 108
    invoke-static {v0, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/app/DumpHeapActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/app/DumpHeapActivity$2;->this$0:Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/DumpHeapActivity;->finish()V

    .line 111
    return-void
.end method
