.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->showBootMessage(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$progress:I

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 10172
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$progress:I

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$total:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBootMessageView()Landroid/view/View;
    .locals 4

    .line 10223
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$5000(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/View;

    move-result-object v0

    .line 10224
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const v2, 0x308005e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mProgressDesc:Landroid/widget/TextView;

    .line 10226
    const-string/jumbo v1, "system/fonts/nubia_Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 10227
    .local v1, "typeface":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mProgressDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 10228
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const v3, 0x308005f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mProgressSummary:Landroid/widget/TextView;

    .line 10230
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 10174
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 10175
    const v0, 0x30e0017

    .line 10177
    .local v0, "theme":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$24$1;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v0}, Lcom/android/server/policy/PhoneWindowManager$24$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$24;Landroid/content/Context;I)V

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    .line 10198
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$24;->getBootMessageView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10199
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7e5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 10201
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 10204
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 10205
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 10206
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 10207
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 10208
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 10210
    .end local v0    # "theme":I
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mProgressSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x30c0007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10213
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x30c0003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$progress:I

    mul-int/lit8 v4, v4, 0x64

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager$24;->val$total:I

    div-int/2addr v4, v5

    .line 10214
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 10213
    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10215
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 10216
    .local v1, "length":I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 10217
    .local v2, "ss":Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/ScaleXSpan;

    const v4, 0x3e051eb8    # 0.13f

    invoke-direct {v3, v4}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    add-int/lit8 v4, v1, -0x2

    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10218
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3ef0a3d7    # 0.47f

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v2, v3, v4, v1, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 10219
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$24;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mProgressDesc:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10220
    return-void
.end method
