.class Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MimeHeader"
.end annotation


# instance fields
.field public boundary:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public encodingType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->contentType:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->boundary:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;->encodingType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/hotspot2/ConfigParser$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/hotspot2/ConfigParser$1;

    .line 85
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/ConfigParser$MimeHeader;-><init>()V

    return-void
.end method
