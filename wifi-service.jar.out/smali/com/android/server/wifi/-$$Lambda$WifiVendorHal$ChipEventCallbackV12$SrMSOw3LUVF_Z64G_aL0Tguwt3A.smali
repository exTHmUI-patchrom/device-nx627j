.class public final synthetic Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;

    invoke-direct {v0}, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;-><init>()V

    sput-object v0, Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;->INSTANCE:Lcom/android/server/wifi/-$$Lambda$WifiVendorHal$ChipEventCallbackV12$SrMSOw3LUVF_Z64G_aL0Tguwt3A;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    invoke-static {p1}, Lcom/android/server/wifi/WifiVendorHal$ChipEventCallbackV12;->lambda$areSameIfaceNames$0(Landroid/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
