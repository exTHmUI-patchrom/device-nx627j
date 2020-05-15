.class public final Landroid/companion/WifiDeviceFilter$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "WifiDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/WifiDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/WifiDeviceFilter;",
        ">;"
    }
.end annotation


# instance fields
.field private mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/companion/WifiDeviceFilter;
    .locals 3

    .line 135
    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter$Builder;->markUsed()V

    .line 136
    new-instance v0, Landroid/companion/WifiDeviceFilter;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/companion/WifiDeviceFilter$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter$Builder;->build()Landroid/companion/WifiDeviceFilter;

    move-result-object v0

    return-object v0
.end method

.method public setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 0
    .param p1, "regex"    # Ljava/util/regex/Pattern;

    .line 126
    invoke-virtual {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    .line 127
    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    .line 128
    return-object p0
.end method
