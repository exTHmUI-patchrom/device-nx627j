.class public abstract Landroid/app/admin/DevicePolicyCache;
.super Ljava/lang/Object;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Landroid/app/admin/DevicePolicyCache;
    .locals 2

    .line 36
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 37
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 38
    .local v0, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->access$000()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    move-result-object v1

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract getScreenCaptureDisabled(I)Z
.end method
