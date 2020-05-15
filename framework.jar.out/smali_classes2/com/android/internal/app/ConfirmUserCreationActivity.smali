.class public Lcom/android/internal/app/ConfirmUserCreationActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmUserCreationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateUser"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountOptions:Landroid/os/PersistableBundle;

.field private mAccountType:Ljava/lang/String;

.field private mCanProceed:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private checkUserCreationRequirements()Ljava/lang/String;
    .locals 11

    .line 85
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "callingPackage":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 94
    nop

    .line 99
    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_add_user"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 100
    invoke-virtual {v3}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    .line 102
    .local v3, "cantCreateUser":Z
    :goto_1
    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v5

    xor-int/2addr v5, v4

    .line 104
    .local v5, "cantCreateAnyMoreUsers":Z
    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .local v6, "account":Landroid/accounts/Account;
    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 106
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/accounts/AccountManager;->someUserHasAccount(Landroid/accounts/Account;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v9, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 107
    invoke-virtual {v8, v9, v10}, Landroid/os/UserManager;->someUserHasSeedAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    or-int/2addr v7, v8

    if-eqz v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v2

    .line 108
    .local v7, "accountExists":Z
    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "appName":Ljava/lang/String;
    const/4 v9, 0x0

    if-eqz v3, :cond_3

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 112
    return-object v9

    .line 113
    :cond_3
    const/4 v10, 0x2

    if-eqz v5, :cond_4

    .line 114
    invoke-virtual {p0, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 115
    return-object v9

    .line 116
    :cond_4
    if-eqz v7, :cond_5

    .line 117
    const v9, 0x1040682

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v2

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    aput-object v2, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "message":Ljava/lang/String;
    goto :goto_3

    .line 119
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    const v9, 0x1040683

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v2

    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    aput-object v2, v10, v4

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2    # "message":Ljava/lang/String;
    :goto_3
    return-object v2

    .line 93
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "cantCreateUser":Z
    .end local v5    # "cantCreateAnyMoreUsers":Z
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v7    # "accountExists":Z
    .end local v8    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Cannot find the calling package"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "User Creation intent must be launched with startActivityForResult"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 127
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v2, :cond_1

    .line 128
    const-string v2, "CreateUser"

    const-string v3, "Ok, creating user"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 130
    .local v0, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 131
    const-string v1, "CreateUser"

    const-string v2, "Couldn\'t create user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/UserManager;->setSeedAccountData(ILjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setResult(I)V

    .line 138
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.os.extra.USER_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserName:Ljava/lang/String;

    .line 58
    const-string v1, "android.os.extra.USER_ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountName:Ljava/lang/String;

    .line 59
    const-string v1, "android.os.extra.USER_ACCOUNT_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountType:Ljava/lang/String;

    .line 60
    const-string v1, "android.os.extra.USER_ACCOUNT_OPTIONS"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/PersistableBundle;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 63
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mUserManager:Landroid/os/UserManager;

    .line 65
    invoke-direct {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->checkUserCreationRequirements()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "message":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->finish()V

    .line 69
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 72
    .local v2, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 73
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    iget-boolean v3, p0, Lcom/android/internal/app/ConfirmUserCreationActivity;->mCanProceed:Z

    if-eqz v3, :cond_1

    .line 78
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ConfirmUserCreationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 79
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ConfirmUserCreationActivity;->setupAlert()V

    .line 82
    return-void
.end method
