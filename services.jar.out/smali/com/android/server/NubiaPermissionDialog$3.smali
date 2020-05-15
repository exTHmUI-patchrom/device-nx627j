.class Lcom/android/server/NubiaPermissionDialog$3;
.super Landroid/os/Handler;
.source "NubiaPermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaPermissionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaPermissionDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaPermissionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaPermissionDialog;

    .line 228
    iput-object p1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private appSupportsRuntimePermissions()Z
    .locals 7

    .line 449
    const/4 v0, 0x0

    .line 450
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 451
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 453
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 459
    goto :goto_0

    .line 456
    :catch_0
    move-exception v3

    .line 457
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NubiaPermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_1

    .line 461
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x16

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v0, v3

    .line 463
    :cond_1
    return v0
.end method

.method private filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "requestedPermissions"    # [Ljava/lang/String;

    .line 409
    if-eqz p1, :cond_2

    .line 410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 412
    .local v3, "permission":Ljava/lang/String;
    sget-object v4, Lcom/android/server/NubiaPermissionDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/NubiaPermissionDialog$3;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 413
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 418
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private fixOpToSwitchNotEquals(I)V
    .locals 10
    .param p1, "mode"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 306
    .local v0, "switchCode":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 307
    return-void

    .line 309
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 310
    return-void

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NubiaPermissionDialog$3;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/NubiaPermissionDialog;->access$1000()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 315
    .local v5, "per":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/server/NubiaPermissionDialog$3;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 316
    goto :goto_2

    .line 318
    :cond_2
    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v6

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog$3;->appSupportsRuntimePermissions()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 321
    if-nez p1, :cond_3

    .line 322
    invoke-direct {p0, v5}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    goto :goto_1

    .line 324
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/android/server/NubiaPermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :goto_1
    goto :goto_2

    .line 329
    :catch_0
    move-exception v6

    .line 330
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 314
    .end local v5    # "per":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    :cond_5
    return-void
.end method

.method private getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 517
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 519
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 522
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "src"    # [Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 422
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 425
    :cond_0
    const/4 v1, 0x0

    .line 426
    .local v1, "contain":Z
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 427
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 428
    const/4 v1, 0x1

    .line 429
    goto :goto_1

    .line 426
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_2
    :goto_1
    return v1

    .line 423
    .end local v1    # "contain":Z
    :cond_3
    :goto_2
    return v0
.end method

.method private isRequested(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;

    .line 437
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 441
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 442
    const/4 v0, 0x1

    return v0

    .line 440
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    :cond_2
    return v0

    .line 438
    :cond_3
    :goto_1
    return v0
.end method

.method private isSystemApp()Z
    .locals 7

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 469
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 471
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 477
    goto :goto_0

    .line 474
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    .line 476
    const-string v4, "NubiaPermissionDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_2

    .line 479
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    nop

    :cond_1
    :goto_1
    move v0, v4

    .line 482
    :cond_2
    return v0
.end method

.method private linkingGreatPermission([Ljava/lang/String;I)V
    .locals 12
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .line 379
    const/4 v0, 0x1

    .line 380
    .local v0, "isSetIgnored":Z
    const/4 v1, 0x1

    .line 381
    .local v1, "isSetAsked":Z
    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/NubiaPermissionDialog$3;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "requestedPermissions":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/NubiaPermissionDialog$3;->filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, "filtedPermissionGroup":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    move v1, v0

    move v0, v5

    .end local v0    # "isSetIgnored":Z
    .local v1, "isSetIgnored":Z
    .local v6, "isSetAsked":Z
    :goto_0
    if-ge v0, v4, :cond_3

    aget-object v7, v3, v0

    .line 386
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v2}, Lcom/android/server/NubiaPermissionDialog$3;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 387
    iget-object v8, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 388
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 389
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v11

    .line 387
    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v8

    .line 390
    .local v8, "opsMode":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    and-int/2addr v1, v10

    .line 391
    const/4 v10, 0x5

    if-ne v8, v10, :cond_1

    goto :goto_2

    :cond_1
    move v9, v5

    :goto_2
    and-int/2addr v6, v9

    .line 385
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "opsMode":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_3
    array-length v0, p1

    :goto_3
    if-ge v5, v0, :cond_7

    aget-object v4, p1, v5

    .line 395
    .local v4, "permission":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/android/server/NubiaPermissionDialog$3;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 396
    goto :goto_4

    .line 398
    :cond_4
    if-eqz v1, :cond_5

    .line 399
    invoke-direct {p0, p2, v4}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    goto :goto_4

    .line 400
    :cond_5
    if-eqz v6, :cond_6

    .line 401
    invoke-direct {p0, p2, v4}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeAsked(ILjava/lang/String;)V

    goto :goto_4

    .line 403
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/NubiaPermissionDialog$3;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    .line 394
    .end local v4    # "permission":Ljava/lang/String;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 406
    :cond_7
    return-void
.end method

.method private notifyOperation(IZ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "remember"    # Z

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$900(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/AppOpsService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$800(Lcom/android/server/NubiaPermissionDialog;)Lcom/android/server/NubiaPermissionDialogReqQueue;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/AppOpsService;->notifyOperation(IILjava/lang/String;IZLcom/android/server/NubiaPermissionDialogReqQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private setGreatPermissionModeAllowFixed(Ljava/lang/String;)V
    .locals 8
    .param p1, "permission"    # Ljava/lang/String;

    .line 506
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 507
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 508
    const/4 v7, 0x3

    .line 510
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 511
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 510
    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 512
    return-void
.end method

.method private setGreatPermissionModeAsked(ILjava/lang/String;)V
    .locals 8
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 498
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 499
    const/4 v7, 0x3

    .line 501
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 502
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 501
    move-object v1, v0

    move-object v2, p2

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 504
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V
    .locals 8
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 486
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 488
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 489
    const/4 v7, 0x3

    .line 491
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 492
    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 491
    move-object v1, v0

    move-object v2, p2

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 494
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setSmallPermissionFixed(ILjava/lang/String;)V
    .locals 7
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 526
    if-nez p2, :cond_0

    .line 527
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const/16 v5, 0x8

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 533
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 530
    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 537
    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1200(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 535
    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 539
    :goto_0
    return-void
.end method

.method private tryToLinkingGreatPermission(I)V
    .locals 12
    .param p1, "mode"    # I

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog$3;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 343
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionDialog$3;->appSupportsRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    sget-object v0, Lcom/android/server/NubiaPermissionDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 345
    .local v4, "permissions":[Ljava/lang/String;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 346
    .local v7, "permission":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v8, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 347
    iget-object v8, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 348
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 349
    invoke-static {v10}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v11}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-virtual {v8, v9, v10, v11, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 350
    invoke-direct {p0, v4, p1}, Lcom/android/server/NubiaPermissionDialog$3;->linkingGreatPermission([Ljava/lang/String;I)V

    .line 345
    .end local v7    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 344
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_3
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NubiaPermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    const/16 v2, 0xe

    if-ne v0, v2, :cond_6

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$500(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 360
    const/16 v1, 0xe

    .local v1, "othercode":I
    goto :goto_2

    .line 362
    .end local v1    # "othercode":I
    :cond_5
    nop

    .restart local v1    # "othercode":I
    :goto_2
    move v0, v1

    .line 365
    .end local v1    # "othercode":I
    .local v0, "othercode":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "tempMode":I
    if-ne v1, p1, :cond_6

    .line 367
    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$600(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v4}, Lcom/android/server/NubiaPermissionDialog;->access$700(Lcom/android/server/NubiaPermissionDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v2, v5, v3, v4, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 368
    iget-object v2, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionDialog;->access$1100(Lcom/android/server/NubiaPermissionDialog;)Landroid/app/AppOpsManager;

    invoke-static {v5}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/NubiaPermissionDialog$3;->setSmallPermissionFixed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "othercode":I
    .end local v1    # "tempMode":I
    :cond_6
    goto :goto_3

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 231
    iget-object v0, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionDialog;->access$100(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 232
    .local v0, "remember":Z
    const/4 v1, 0x0

    .line 233
    .local v1, "isTimeDown":Z
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0xf

    const/16 v6, 0x8

    if-eq v2, v3, :cond_4

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_0

    .line 259
    goto :goto_1

    .line 241
    :cond_0
    const/4 v2, 0x1

    .line 242
    .local v2, "mode":I
    const/4 v1, 0x1

    .line 243
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$210(Lcom/android/server/NubiaPermissionDialog;)I

    .line 244
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$200(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v3

    const-wide/16 v7, 0x3e8

    if-lez v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 246
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 245
    invoke-virtual {v3, v9, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 248
    :cond_1
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    .line 249
    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 248
    invoke-virtual {v3, v9, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    :goto_0
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$400(Lcom/android/server/NubiaPermissionDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v7}, Lcom/android/server/NubiaPermissionDialog;->access$300(Lcom/android/server/NubiaPermissionDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30c0014

    .line 253
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v9}, Lcom/android/server/NubiaPermissionDialog;->access$200(Lcom/android/server/NubiaPermissionDialog;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v8

    .line 252
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    nop

    .line 259
    move v4, v2

    goto :goto_1

    .line 256
    .end local v2    # "mode":I
    :cond_2
    const/4 v4, 0x1

    .line 257
    .local v4, "mode":I
    goto :goto_1

    .line 238
    .end local v4    # "mode":I
    :cond_3
    const/4 v4, 0x1

    .line 239
    .restart local v4    # "mode":I
    goto :goto_1

    .line 235
    .end local v4    # "mode":I
    :cond_4
    const/4 v4, 0x0

    .line 236
    .restart local v4    # "mode":I
    nop

    .line 259
    :goto_1
    move v2, v4

    .line 261
    .end local v4    # "mode":I
    .restart local v2    # "mode":I
    if-nez v1, :cond_5

    .line 262
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionDialog;->access$000(Lcom/android/server/NubiaPermissionDialog;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    invoke-direct {p0, v2, v0}, Lcom/android/server/NubiaPermissionDialog$3;->notifyOperation(IZ)V

    .line 265
    iget-object v3, p0, Lcom/android/server/NubiaPermissionDialog$3;->this$0:Lcom/android/server/NubiaPermissionDialog;

    invoke-virtual {v3}, Lcom/android/server/NubiaPermissionDialog;->dismiss()V

    .line 266
    if-eqz v0, :cond_5

    .line 267
    invoke-direct {p0, v2}, Lcom/android/server/NubiaPermissionDialog$3;->tryToLinkingGreatPermission(I)V

    .line 268
    invoke-direct {p0, v2}, Lcom/android/server/NubiaPermissionDialog$3;->fixOpToSwitchNotEquals(I)V

    .line 271
    :cond_5
    return-void
.end method
