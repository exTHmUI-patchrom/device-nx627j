.class Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierServicePackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;
    .param p2, "x1"    # Lcom/android/internal/telephony/CarrierServiceBindHelper$1;

    .line 333
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "carrierPackageName"    # Ljava/lang/String;
    .param p2, "forceUnbind"    # Z

    .line 365
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$200(Lcom/android/internal/telephony/CarrierServiceBindHelper;)[Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 366
    .local v3, "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    invoke-virtual {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPackage()Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "appBindingPackage":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 372
    .local v5, "isBindingForPackage":Z
    if-eqz v5, :cond_0

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " changed and corresponds to a phone. Rebinding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->access$100(Ljava/lang/String;)V

    .line 375
    :cond_0
    if-eqz v4, :cond_1

    if-eqz v5, :cond_3

    .line 376
    :cond_1
    if-eqz p2, :cond_2

    .line 377
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind(Z)V

    .line 379
    :cond_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    .line 365
    .end local v3    # "appBinding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    .end local v4    # "appBindingPackage":Ljava/lang/String;
    .end local v5    # "isBindingForPackage":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 382
    :cond_4
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 356
    if-eqz p4, :cond_0

    .line 357
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 358
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 357
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 337
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 351
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 352
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 341
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 342
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 346
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServicePackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 347
    return-void
.end method
