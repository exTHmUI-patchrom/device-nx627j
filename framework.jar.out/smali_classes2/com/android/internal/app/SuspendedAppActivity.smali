.class public Lcom/android/internal/app/SuspendedAppActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SuspendedAppActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final EXTRA_DIALOG_MESSAGE:Ljava/lang/String; = "SuspendedAppActivity.extra.DIALOG_MESSAGE"

.field public static final EXTRA_SUSPENDED_PACKAGE:Ljava/lang/String; = "SuspendedAppActivity.extra.SUSPENDED_PACKAGE"

.field public static final EXTRA_SUSPENDING_PACKAGE:Ljava/lang/String; = "SuspendedAppActivity.extra.SUSPENDING_PACKAGE"

.field private static final TAG:Ljava/lang/String; = "SuspendedAppActivity"


# instance fields
.field private mMoreDetailsIntent:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method public static createSuspendedAppInterceptIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 3
    .param p0, "suspendedPackage"    # Ljava/lang/String;
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "dialogMessage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/SuspendedAppActivity;

    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SuspendedAppActivity.extra.SUSPENDED_PACKAGE"

    .line 122
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SuspendedAppActivity.extra.DIALOG_MESSAGE"

    .line 123
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SuspendedAppActivity.extra.SUSPENDING_PACKAGE"

    .line 124
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 125
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 126
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 120
    return-object v0
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SuspendedAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0    # "ne":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p1
.end method

.method private getMoreDetailsActivity(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5
    .param p1, "suspendingPackage"    # Ljava/lang/String;
    .param p2, "suspendedPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SHOW_SUSPENDED_APP_DETAILS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "moreDetailsIntent":Landroid/content/Intent;
    const-string v1, "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"

    .line 59
    .local v1, "requiredPermission":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 60
    .local v2, "resolvedInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    const-string v3, "android.permission.SEND_SHOW_SUSPENDED_APP_DETAILS"

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x14000000

    .line 63
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    return-object v0

    .line 66
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 109
    const/4 v0, -0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/SuspendedAppActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 112
    const-string v0, "SuspendedAppActivity"

    const-string v1, "Started more details activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuspendedAppActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.USER_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    .line 77
    iget v1, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    if-gez v1, :cond_0

    .line 78
    const-string v1, "SuspendedAppActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->finish()V

    .line 80
    return-void

    .line 82
    :cond_0
    const-string v1, "SuspendedAppActivity.extra.DIALOG_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "suppliedMessage":Ljava/lang/String;
    const-string v2, "SuspendedAppActivity.extra.SUSPENDED_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "suspendedPackage":Ljava/lang/String;
    const-string v3, "SuspendedAppActivity.extra.SUSPENDING_PACKAGE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "suspendingPackage":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 87
    .local v4, "suspendedAppLabel":Ljava/lang/CharSequence;
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    .line 88
    const v7, 0x1040089

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v6

    .line 89
    invoke-direct {p0, v3}, Lcom/android/internal/app/SuspendedAppActivity;->getAppLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v8, v5

    .line 88
    invoke-virtual {p0, v7, v8}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "dialogMessage":Ljava/lang/CharSequence;
    goto :goto_0

    .line 91
    .end local v5    # "dialogMessage":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v7, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .restart local v5    # "dialogMessage":Ljava/lang/CharSequence;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/app/SuspendedAppActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 96
    .local v6, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v7, 0x104008b

    invoke-virtual {p0, v7}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 97
    iput-object v5, v6, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 98
    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 99
    iget v7, p0, Lcom/android/internal/app/SuspendedAppActivity;->mUserId:I

    invoke-direct {p0, v3, v2, v7}, Lcom/android/internal/app/SuspendedAppActivity;->getMoreDetailsActivity(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    .line 100
    iget-object v7, p0, Lcom/android/internal/app/SuspendedAppActivity;->mMoreDetailsIntent:Landroid/content/Intent;

    if-eqz v7, :cond_2

    .line 101
    const v7, 0x104008a

    invoke-virtual {p0, v7}, Lcom/android/internal/app/SuspendedAppActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 103
    :cond_2
    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p0, v6, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/app/SuspendedAppActivity;->setupAlert()V

    .line 105
    return-void
.end method
