.class Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
.super Landroid/app/admin/DevicePolicyCache;
.source "DevicePolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyDevicePolicyCache"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/admin/DevicePolicyCache;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;
    .locals 1

    .line 49
    sget-object v0, Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;->INSTANCE:Landroid/app/admin/DevicePolicyCache$EmptyDevicePolicyCache;

    return-object v0
.end method


# virtual methods
.method public getScreenCaptureDisabled(I)Z
    .locals 1
    .param p1, "userHandle"    # I

    .line 54
    const/4 v0, 0x0

    return v0
.end method
