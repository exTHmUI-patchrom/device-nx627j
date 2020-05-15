.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final DPP:I = 0xa

.field public static final FILS_SHA256:I = 0x8

.field public static final FILS_SHA384:I = 0x9

.field public static final FT_EAP:I = 0x7

.field public static final FT_PSK:I = 0x6

.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final OSEN:I = 0x5

.field public static final OWE:I = 0xc

.field public static final SAE:I = 0xb

.field public static final SUITE_B_192:I = 0xd

.field public static final WAPI_CERT:I = 0xbf

.field public static final WAPI_PSK:I = 0xbe

.field public static final WPA2_PSK:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"

.field public static final wapi_cert_string:Ljava/lang/String; = "WAPI_CERT"

.field public static final wapi_psk_string:Ljava/lang/String; = "WAPI_PSK"


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 197
    const-string v0, "NONE"

    const-string v1, "WPA_PSK"

    const-string v2, "WPA_EAP"

    const-string v3, "IEEE8021X"

    const-string v4, "WPA2_PSK"

    const-string v5, "OSEN"

    const-string v6, "FT_PSK"

    const-string v7, "FT_EAP"

    const-string v8, "FILS_SHA256"

    const-string v9, "FILS_SHA384"

    const-string v10, "DPP"

    const-string v11, "SAE"

    const-string v12, "OWE"

    const-string v13, "SUITE_B_192"

    const-string v14, "WAPI_PSK"

    const-string v15, "WAPI_CERT"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
