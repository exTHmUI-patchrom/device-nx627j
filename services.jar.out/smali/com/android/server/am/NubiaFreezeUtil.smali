.class Lcom/android/server/am/NubiaFreezeUtil;
.super Ljava/lang/Object;
.source "NubiaFreezeUtil.java"


# static fields
.field private static final DEBUGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NubiaFreezeUtil"


# instance fields
.field private mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;


# direct methods
.method public constructor <init>(Lcom/android/server/am/NubiaSelfStartUtil;)V
    .locals 1
    .param p1, "selfStartUtil"    # Lcom/android/server/am/NubiaSelfStartUtil;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 41
    iput-object p1, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 42
    return-void
.end method


# virtual methods
.method isAllowedStartFrozenPkgFromContentProvider(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "cpr"    # Lcom/android/server/am/ContentProviderRecord;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "result":Z
    iget-object v1, p2, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    .line 64
    .local v1, "cpi":Landroid/content/pm/ProviderInfo;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 71
    .local v2, "callingUid":I
    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_0

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 73
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingInCallerList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "ContentProviderImpl"

    .line 76
    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x1

    .line 79
    :cond_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 80
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromContentProvider() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_2
    return v0
.end method

.method public isAllowedStartFrozenPkgFromService(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)Z
    .locals 6
    .param p1, "callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "s"    # Lcom/android/server/am/ServiceRecord;

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "result":Z
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 47
    .local v1, "callingUid":I
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 48
    .local v2, "callingPid":I
    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 50
    invoke-virtual {p0, p1, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    .line 52
    invoke-virtual {v3, p2, v1}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartFromBindService(Lcom/android/server/am/ServiceRecord;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    :cond_0
    const/4 v0, 0x1

    .line 55
    :cond_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 56
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromService() result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_2
    return v0
.end method

.method isAllowedStartFrozenPkgFromeBroadcast(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 118
    .local v1, "act":Ljava/lang/String;
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 119
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_0
    const/4 v9, 0x1

    .line 124
    .local v9, "isAllowStartFrozen":Z
    const-string/jumbo v10, "init"

    .line 125
    .local v10, "allowSelfStart":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_3

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 126
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v3 .. v8}, Lnubia/os/ApplicationManager$Trigger;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 132
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 133
    if-eqz v9, :cond_4

    .line 134
    const/4 v0, 0x1

    goto :goto_1

    .line 137
    :cond_2
    const-string/jumbo v10, "not allow"

    .line 138
    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 139
    move v0, v9

    .line 140
    const-string v10, "allow"

    goto :goto_1

    .line 128
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 145
    :cond_4
    :goto_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 146
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromeBroadcast()1 result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , act = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , r.callingUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", r.callingPid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", selfstart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    return v0
.end method

.method isAllowedStartFrozenPkgFromeBroadcast(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "filter"    # Lcom/android/server/am/BroadcastFilter;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "result":Z
    const/4 v1, 0x0

    .line 156
    .local v1, "act":Ljava/lang/String;
    iget-object v2, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v2, v2, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 157
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    const/4 v9, 0x1

    .line 162
    .local v9, "isAllowStartFrozen":Z
    const-string/jumbo v10, "nubia.pay.broadcast.action"

    .line 163
    .local v10, "nubiaPayAction":Ljava/lang/String;
    const-string/jumbo v11, "init"

    .line 164
    .local v11, "allowSelfStart":Ljava/lang/String;
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v4, 0x3e9

    if-eq v3, v4, :cond_3

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 165
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/NubiaFreezeUtil;->isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    invoke-virtual {p0, v2}, Lcom/android/server/am/NubiaFreezeUtil;->isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v3 .. v8}, Lnubia/os/ApplicationManager$Trigger;->isAllowedStartFrozenPackage(IIIILjava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 172
    iget v3, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 173
    if-eqz v9, :cond_4

    .line 174
    const/4 v0, 0x1

    goto :goto_1

    .line 177
    :cond_2
    const-string/jumbo v11, "not allow"

    .line 178
    iget-object v3, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/NubiaSelfStartUtil;->isAllowedSelfStartPkg(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 179
    const-string v11, "allow"

    .line 180
    move v0, v9

    goto :goto_1

    .line 168
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 185
    :cond_4
    :goto_1
    sget-boolean v3, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 186
    const-string v3, "NubiaFreezeUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FROZEN] isAllowedStartFrozenPkgFromeBroadcast()2 result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , act = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , r.callingUid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", r.callingPid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , filter.pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", selfstart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_5
    return v0
.end method

.method isCallingInCallerList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;

    .line 92
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/NubiaFreezeUtil;->mSelfStartUtil:Lcom/android/server/am/NubiaSelfStartUtil;

    invoke-virtual {v1}, Lcom/android/server/am/NubiaSelfStartUtil;->getCallerPkgList()Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "defaltCallerPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 95
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 96
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 98
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 103
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return v0

    .line 92
    .end local v1    # "defaltCallerPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    return v0
.end method

.method isCallingSystemProcess(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 87
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 88
    :cond_0
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0
.end method

.method isSamePackgeName(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 107
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    sget-boolean v0, Lcn/nubia/server/appmgmt/freezer/ApplicationFreezeConfig;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 109
    const-string v0, "NubiaFreezeUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[FROZEN] packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 107
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
