.class Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;
.super Landroid/net/captiveportal/CaptivePortalProbeSpec;
.source "CaptivePortalProbeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/captiveportal/CaptivePortalProbeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegexMatchProbeSpec"
.end annotation


# instance fields
.field final mLocationHeaderRegex:Ljava/util/regex/Pattern;

.field final mStatusRegex:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "spec"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "statusRegex"    # Ljava/util/regex/Pattern;
    .param p4, "locationHeaderRegex"    # Ljava/util/regex/Pattern;

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;-><init>(Ljava/lang/String;Ljava/net/URL;)V

    .line 162
    iput-object p3, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    .line 163
    iput-object p4, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    .line 164
    return-void
.end method


# virtual methods
.method public getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 5
    .param p1, "status"    # I
    .param p2, "locationHeader"    # Ljava/lang/String;

    .line 168
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mStatusRegex:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v0

    .line 169
    .local v0, "statusMatch":Z
    iget-object v1, p0, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->mLocationHeaderRegex:Ljava/util/regex/Pattern;

    invoke-static {p2, v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->access$000(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v1

    .line 170
    .local v1, "locationMatch":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0xcc

    goto :goto_0

    :cond_0
    const/16 v2, 0x12e

    .line 171
    .local v2, "returnCode":I
    :goto_0
    new-instance v3, Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 172
    invoke-virtual {p0}, Landroid/net/captiveportal/CaptivePortalProbeSpec$RegexMatchProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, p2, v4, p0}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/captiveportal/CaptivePortalProbeSpec;)V

    .line 171
    return-object v3
.end method
