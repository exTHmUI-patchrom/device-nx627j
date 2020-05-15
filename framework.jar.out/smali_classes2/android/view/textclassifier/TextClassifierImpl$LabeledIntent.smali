.class final Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LabeledIntent"
.end annotation


# static fields
.field static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private final mRequestCode:I

.field private final mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    .line 589
    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    .line 590
    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    .line 591
    iput p4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    .line 592
    return-void
.end method


# virtual methods
.method asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 613
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 614
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    .line 615
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 616
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 617
    .local v4, "icon":Landroid/graphics/drawable/Icon;
    const/4 v5, 0x0

    .line 618
    .local v5, "shouldShowIcon":Z
    if-eqz v3, :cond_1

    const-string v6, "android"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 620
    iget-object v6, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 621
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    if-eqz v6, :cond_1

    .line 622
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 623
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v6

    .line 622
    invoke-static {v3, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 624
    const/4 v5, 0x1

    .line 627
    :cond_1
    if-nez v4, :cond_2

    .line 629
    const-string v6, "android"

    const v7, 0x108049d

    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    .line 632
    :cond_2
    iget-object v6, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    iget v7, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    .line 633
    invoke-static {p1, v6, v7}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 634
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-nez v6, :cond_3

    .line 635
    return-object v2

    .line 637
    :cond_3
    new-instance v2, Landroid/app/RemoteAction;

    iget-object v7, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    invoke-direct {v2, v4, v7, v8, v6}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 638
    .local v2, "action":Landroid/app/RemoteAction;
    invoke-virtual {v2, v5}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    .line 639
    return-object v2
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    .line 603
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    .line 607
    iget v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 595
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    return-object v0
.end method
