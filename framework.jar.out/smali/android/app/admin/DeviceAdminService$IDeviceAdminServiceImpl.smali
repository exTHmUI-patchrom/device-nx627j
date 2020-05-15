.class Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;
.super Landroid/app/admin/IDeviceAdminService$Stub;
.source "DeviceAdminService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DeviceAdminService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IDeviceAdminServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/admin/DeviceAdminService;


# direct methods
.method private constructor <init>(Landroid/app/admin/DeviceAdminService;)V
    .locals 0

    .line 61
    iput-object p1, p0, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;->this$0:Landroid/app/admin/DeviceAdminService;

    invoke-direct {p0}, Landroid/app/admin/IDeviceAdminService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DeviceAdminService;Landroid/app/admin/DeviceAdminService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/admin/DeviceAdminService;
    .param p2, "x1"    # Landroid/app/admin/DeviceAdminService$1;

    .line 61
    invoke-direct {p0, p1}, Landroid/app/admin/DeviceAdminService$IDeviceAdminServiceImpl;-><init>(Landroid/app/admin/DeviceAdminService;)V

    return-void
.end method
