.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private isComputed:Z

.field private final mContext:Landroid/content/Context;

.field private final mLaunchedFromUid:I

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "targetIntent"    # Landroid/content/Intent;
    .param p4, "referrerPackage"    # Ljava/lang/String;
    .param p5, "launchedFromUid"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 68
    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    .line 70
    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    .line 71
    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    .line 72
    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/internal/app/ResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    .line 75
    return-void
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3
    .param p0, "a"    # Landroid/content/pm/ResolveInfo;
    .param p1, "b"    # Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 268
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 269
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 270
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 269
    :goto_0
    return v1
.end method


# virtual methods
.method public addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 9
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p1, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .local p3, "from":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 132
    .local v0, "fromCount":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 133
    .local v1, "intoCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 134
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 135
    .local v4, "newInfo":Landroid/content/pm/ResolveInfo;
    const/4 v5, 0x0

    .line 137
    .local v5, "found":Z
    move v6, v2

    .local v6, "j":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 138
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 139
    .local v7, "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-static {v4, v7}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 140
    const/4 v5, 0x1

    .line 141
    invoke-virtual {v7, p2, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 142
    goto :goto_2

    .line 137
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 145
    .end local v6    # "j":I
    :cond_1
    :goto_2
    if-nez v5, :cond_2

    .line 146
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v6, "name":Landroid/content/ComponentName;
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v7, v6, p2, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 150
    .restart local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    .line 151
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .end local v4    # "newInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "found":Z
    .end local v6    # "name":Landroid/content/ComponentName;
    .end local v7    # "rci":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator;->destroy()V

    .line 296
    return-void
.end method

.method public filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 168
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 169
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 170
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 172
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v7, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    .line 175
    .local v5, "granted":I
    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    move v4, v2

    nop

    .line 177
    .local v4, "suspended":Z
    :cond_0
    if-nez v5, :cond_1

    if-nez v4, :cond_1

    .line 178
    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 181
    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    .line 182
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    .line 184
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 169
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "suspended":Z
    .end local v5    # "granted":I
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method public filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "returnCopyOfOriginalListIfModified"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 198
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 201
    .local v0, "listToReturn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 202
    .local v2, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v2, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 203
    .local v3, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 204
    .local v4, "N":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 205
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 212
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v7, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v8, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v7, v8, :cond_0

    iget-boolean v7, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v8, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v7, v8, :cond_2

    .line 214
    :cond_0
    :goto_1
    if-ge v5, v4, :cond_2

    .line 215
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 216
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    .line 218
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 219
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 204
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 223
    .end local v5    # "i":I
    :cond_3
    return-object v0
.end method

.method public getLastChosen()Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 79
    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "shouldGetResolvedFilter"    # Z
    .param p2, "shouldGetActivityMetadata"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 98
    .local p3, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "resolvedComponents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "N":I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 100
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 101
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000

    .line 102
    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const/16 v6, 0x40

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    or-int/2addr v4, v6

    .line 103
    if-eqz p2, :cond_1

    const/16 v5, 0x80

    nop

    :cond_1
    or-int/2addr v4, v5

    .line 104
    .local v4, "flags":I
    invoke-virtual {v3}, Landroid/content/Intent;->isWebIntent()Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_3

    .line 106
    :cond_2
    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    .line 108
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 111
    .local v6, "totalSize":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "j":I
    :goto_2
    if-ltz v7, :cond_5

    .line 112
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 113
    .local v8, "info":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v9, :cond_4

    .line 114
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 111
    .end local v8    # "info":Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 117
    .end local v7    # "j":I
    :cond_5
    if-eqz v5, :cond_7

    .line 118
    if-nez v0, :cond_6

    .line 119
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v7

    .line 121
    :cond_6
    invoke-virtual {p0, v0, v3, v5}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    .line 99
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "flags":I
    .end local v5    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "totalSize":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    .end local v2    # "N":I
    :cond_8
    return-object v0
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method isComponentFiltered(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "match"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 87
    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 91
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    .line 242
    .local p1, "inputList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "ResolverListController"

    const-string v1, "Comparator has already been destroyed; skipped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 247
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 248
    .local v0, "beforeRank":J
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    if-nez v2, :cond_1

    .line 249
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 250
    .local v2, "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v4, p0, v2}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    .line 251
    .local v4, "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/ResolverComparator;->setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    .line 252
    iget-object v5, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v5, p1}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    .line 253
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 254
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverListController;->isComputed:Z

    .line 256
    .end local v2    # "finishComputeSignal":Ljava/util/concurrent/CountDownLatch;
    .end local v4    # "callback":Lcom/android/internal/app/ResolverListController$ComputeCallback;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v0    # "beforeRank":J
    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "ResolverListController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compute & Sort was interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "action"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverComparator;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 287
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverComparator;->updateModel(Landroid/content/ComponentName;)V

    .line 288
    return-void
.end method
