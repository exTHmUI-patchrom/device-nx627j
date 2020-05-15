.class public final Landroid/net/captiveportal/CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "CaptivePortalProbeResult.java"


# static fields
.field public static final FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field public static final FAILED_CODE:I = 0x257

.field public static final PORTAL_CODE:I = 0x12e

.field public static final SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field public static final SUCCESS_CODE:I = 0xcc


# instance fields
.field public final detectUrl:Ljava/lang/String;

.field private final mHttpResponseCode:I

.field public final probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field public final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 31
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    const/16 v1, 0xcc

    invoke-direct {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpResponseCode"    # I

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V
    .locals 0
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;
    .param p4, "probeSpec"    # Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    .line 52
    iput-object p2, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 55
    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPortal()Z
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0x18f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccessful()Z
    .locals 2

    .line 58
    iget v0, p0, Landroid/net/captiveportal/CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
