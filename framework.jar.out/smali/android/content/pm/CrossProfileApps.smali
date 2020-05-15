.class public Landroid/content/pm/CrossProfileApps;
.super Ljava/lang/Object;
.source "CrossProfileApps.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResources:Landroid/content/res/Resources;

.field private final mService:Landroid/content/pm/ICrossProfileApps;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ICrossProfileApps;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/ICrossProfileApps;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    .line 49
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    .line 51
    return-void
.end method

.method private verifyCanAccessUser(Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 148
    invoke-virtual {p0}, Landroid/content/pm/CrossProfileApps;->getTargetUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getProfileSwitchingIconDrawable(Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 135
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 137
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    .line 138
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 139
    .local v0, "isManagedProfile":Z
    if-eqz v0, :cond_0

    .line 140
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    const v2, 0x1080335

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getProfileSwitchingLabel(Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 113
    invoke-direct {p0, p1}, Landroid/content/pm/CrossProfileApps;->verifyCanAccessUser(Landroid/os/UserHandle;)V

    .line 115
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x1040347

    goto :goto_0

    .line 117
    :cond_0
    const v0, 0x1040688

    .line 118
    .local v0, "stringRes":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTargetUserProfiles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 93
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/ICrossProfileApps;->getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "targetUser"    # Landroid/os/UserHandle;

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/CrossProfileApps;->mService:Landroid/content/pm/ICrossProfileApps;

    iget-object v1, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/CrossProfileApps;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2, p1, p2}, Landroid/content/pm/ICrossProfileApps;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
