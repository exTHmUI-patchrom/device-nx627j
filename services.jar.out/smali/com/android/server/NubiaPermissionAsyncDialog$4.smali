.class Lcom/android/server/NubiaPermissionAsyncDialog$4;
.super Landroid/os/Handler;
.source "NubiaPermissionAsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NubiaPermissionAsyncDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NubiaPermissionAsyncDialog;


# direct methods
.method constructor <init>(Lcom/android/server/NubiaPermissionAsyncDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 250
    iput-object p1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private appSupportsRuntimePermissions()Z
    .locals 7

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 411
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 413
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 419
    goto :goto_0

    .line 416
    :catch_0
    move-exception v3

    .line 417
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "NubiaPermissionAsyncDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_1

    .line 421
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

    .line 423
    :cond_1
    return v0
.end method

.method private filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "requestedPermissions"    # [Ljava/lang/String;

    .line 369
    if-eqz p1, :cond_2

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 372
    .local v3, "permission":Ljava/lang/String;
    sget-object v4, Lcom/android/server/NubiaPermissionAsyncDialog;->HIDE_PERMISSIONS_FOR_CTA:[Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 378
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private fixOpToSwitchNotEquals(I)V
    .locals 10
    .param p1, "mode"    # I

    .line 282
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v0

    .line 283
    .local v0, "switchCode":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 287
    return-void

    .line 290
    :cond_1
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "permissions":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$800()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 292
    .local v5, "per":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 293
    goto :goto_2

    .line 295
    :cond_2
    iget-object v6, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    move-result-object v6

    invoke-static {v5}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v9}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->appSupportsRuntimePermissions()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 298
    if-nez p1, :cond_3

    .line 299
    invoke-direct {p0, v5}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    goto :goto_1

    .line 301
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_4
    invoke-direct {p0, p1, v5}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setSmallPermissionFixed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_1
    goto :goto_2

    .line 306
    :catch_0
    move-exception v6

    .line 307
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v5    # "per":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_5
    return-void
.end method

.method private getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 477
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 479
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 482
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private isContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "src"    # [Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 385
    :cond_0
    const/4 v1, 0x0

    .line 386
    .local v1, "contain":Z
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p1, v0

    .line 387
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    const/4 v1, 0x1

    .line 389
    goto :goto_1

    .line 386
    .end local v3    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_2
    :goto_1
    return v1

    .line 383
    .end local v1    # "contain":Z
    :cond_3
    :goto_2
    return v0
.end method

.method private isRequested(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestedPermissions"    # [Ljava/lang/String;

    .line 397
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 401
    .local v3, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 402
    const/4 v0, 0x1

    return v0

    .line 400
    .end local v3    # "requestedPermission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 405
    :cond_2
    return v0

    .line 398
    :cond_3
    :goto_1
    return v0
.end method

.method private isSystemApp()Z
    .locals 7

    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 429
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 431
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2200

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 437
    goto :goto_0

    .line 434
    :catch_0
    move-exception v3

    .line 435
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    .line 436
    const-string v4, "NubiaPermissionAsyncDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when retrieving package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v6}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v2, :cond_2

    .line 439
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

    .line 442
    :cond_2
    return v0
.end method

.method private linkingGreatPermission([Ljava/lang/String;I)V
    .locals 12
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "mode"    # I

    .line 339
    const/4 v0, 0x1

    .line 340
    .local v0, "isSetIgnored":Z
    const/4 v1, 0x1

    .line 341
    .local v1, "isSetAsked":Z
    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "requestedPermissions":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->filtedHidedPermissionsForCTA([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 345
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

    .line 346
    .local v7, "permission":Ljava/lang/String;
    invoke-direct {p0, v7, v2}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 347
    iget-object v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 348
    invoke-static {v9}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 349
    invoke-static {v10}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v11}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-virtual {v8, v9, v10, v11}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v8

    .line 350
    .local v8, "opsMode":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    move v10, v9

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    and-int/2addr v1, v10

    .line 351
    const/4 v10, 0x5

    if-ne v8, v10, :cond_1

    goto :goto_2

    :cond_1
    move v9, v5

    :goto_2
    and-int/2addr v6, v9

    .line 345
    .end local v7    # "permission":Ljava/lang/String;
    .end local v8    # "opsMode":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_3
    array-length v0, p1

    :goto_3
    if-ge v5, v0, :cond_7

    aget-object v4, p1, v5

    .line 355
    .local v4, "permission":Ljava/lang/String;
    invoke-direct {p0, v4, v2}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 356
    goto :goto_4

    .line 358
    :cond_4
    if-eqz v1, :cond_5

    .line 359
    invoke-direct {p0, p2, v4}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V

    goto :goto_4

    .line 360
    :cond_5
    if-eqz v6, :cond_6

    .line 361
    invoke-direct {p0, p2, v4}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setGreatPermissionModeAsked(ILjava/lang/String;)V

    goto :goto_4

    .line 363
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setGreatPermissionModeAllowFixed(Ljava/lang/String;)V

    .line 354
    .end local v4    # "permission":Ljava/lang/String;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 366
    :cond_7
    return-void
.end method

.method private notifyOperation(IZ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "remember"    # Z

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$700(Lcom/android/server/NubiaPermissionAsyncDialog;)Lcom/android/server/AppOpsService;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v2

    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v3

    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$600(Lcom/android/server/NubiaPermissionAsyncDialog;)Lcom/android/server/NubiaPermissionDialogReqQueue;

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

    .line 466
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 467
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 468
    const/4 v7, 0x3

    .line 470
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 471
    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 470
    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 472
    return-void
.end method

.method private setGreatPermissionModeAsked(ILjava/lang/String;)V
    .locals 8
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 456
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 458
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 459
    const/4 v7, 0x3

    .line 461
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 462
    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 461
    move-object v1, v0

    move-object v2, p2

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 464
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setGreatPermissionModeIgnoreFixed(ILjava/lang/String;)V
    .locals 8
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 446
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1000(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 448
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 449
    const/4 v7, 0x3

    .line 451
    .local v7, "flagMask":I
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 452
    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v6

    .line 451
    move-object v1, v0

    move-object v2, p2

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 454
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "flagMask":I
    :cond_0
    return-void
.end method

.method private setSmallPermissionFixed(ILjava/lang/String;)V
    .locals 8
    .param p1, "currentModeFixed"    # I
    .param p2, "permission"    # Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "requestedPermissions":[Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-direct {p0, p2, v0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isRequested(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0x8

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 495
    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v7

    .line 492
    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1200(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 499
    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$1100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/os/UserHandle;

    move-result-object v7

    .line 497
    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 501
    :goto_0
    return-void

    .line 488
    :cond_2
    :goto_1
    return-void
.end method

.method private tryToLinkingGreatPermission(I)V
    .locals 12
    .param p1, "mode"    # I

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v1}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v3}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 319
    invoke-direct {p0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->appSupportsRuntimePermissions()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    sget-object v0, Lcom/android/server/NubiaPermissionAsyncDialog;->PERMISSION_HAS_CHILDREN:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 321
    .local v4, "permissions":[Ljava/lang/String;
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 322
    .local v7, "permission":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    iget-object v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v8

    invoke-static {v8}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 323
    iget-object v8, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v8}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 324
    invoke-static {v9}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    .line 325
    invoke-static {v10}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$400(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v11}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$500(Lcom/android/server/NubiaPermissionAsyncDialog;)Ljava/lang/String;

    move-result-object v11

    .line 323
    invoke-virtual {v8, v9, v10, v11, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 326
    invoke-direct {p0, v4, p1}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->linkingGreatPermission([Ljava/lang/String;I)V

    .line 321
    .end local v7    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 320
    .end local v4    # "permissions":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$900(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$300(Lcom/android/server/NubiaPermissionAsyncDialog;)I

    move-result v0

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->setSmallPermissionFixed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_4
    goto :goto_2

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 253
    iget-object v0, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-static {v0}, Lcom/android/server/NubiaPermissionAsyncDialog;->access$100(Lcom/android/server/NubiaPermissionAsyncDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 254
    .local v0, "remember":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 263
    const/4 v1, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const/4 v1, 0x1

    .line 261
    .local v1, "mode":I
    goto :goto_0

    .line 256
    .end local v1    # "mode":I
    :cond_1
    const/4 v0, 0x1

    .line 257
    const/4 v1, 0x0

    .line 258
    .restart local v1    # "mode":I
    nop

    .line 263
    :goto_0
    nop

    .line 265
    invoke-direct {p0, v1, v0}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->notifyOperation(IZ)V

    .line 266
    iget-object v2, p0, Lcom/android/server/NubiaPermissionAsyncDialog$4;->this$0:Lcom/android/server/NubiaPermissionAsyncDialog;

    invoke-virtual {v2}, Lcom/android/server/NubiaPermissionAsyncDialog;->dismiss()V

    .line 267
    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0, v1}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->tryToLinkingGreatPermission(I)V

    .line 269
    invoke-direct {p0, v1}, Lcom/android/server/NubiaPermissionAsyncDialog$4;->fixOpToSwitchNotEquals(I)V

    .line 271
    :cond_2
    return-void
.end method
