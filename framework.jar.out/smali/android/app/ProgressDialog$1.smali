.class Landroid/app/ProgressDialog$1;
.super Landroid/os/Handler;
.source "ProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ProgressDialog;

    .line 200
    iput-object p1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 203
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 206
    iget-object v0, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v0}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 207
    .local v0, "progress":I
    iget-object v1, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v1}, Landroid/app/ProgressDialog;->access$000(Landroid/app/ProgressDialog;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 208
    .local v1, "max":I
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->access$100(Landroid/app/ProgressDialog;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "format":Ljava/lang/String;
    iget-object v5, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v5}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    .end local v2    # "format":Ljava/lang/String;
    goto :goto_0

    .line 212
    :cond_0
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->access$200(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    :goto_0
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 215
    int-to-double v5, v0

    int-to-double v7, v1

    div-double/2addr v5, v7

    .line 216
    .local v5, "percent":D
    new-instance v2, Landroid/text/SpannableString;

    iget-object v7, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v7}, Landroid/app/ProgressDialog;->access$300(Landroid/app/ProgressDialog;)Ljava/text/NumberFormat;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    .local v2, "tmp":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 218
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v8, 0x21

    .line 217
    invoke-virtual {v2, v7, v4, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 219
    iget-object v3, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v3}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    .end local v2    # "tmp":Landroid/text/SpannableString;
    .end local v5    # "percent":D
    goto :goto_1

    .line 221
    :cond_1
    iget-object v2, p0, Landroid/app/ProgressDialog$1;->this$0:Landroid/app/ProgressDialog;

    invoke-static {v2}, Landroid/app/ProgressDialog;->access$400(Landroid/app/ProgressDialog;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :goto_1
    return-void
.end method
