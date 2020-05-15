.class Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;
.super Ljava/lang/Object;
.source "NubiaHighlightsProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Filter"
.end annotation


# instance fields
.field public acceptPackages:[Ljava/lang/String;

.field public flag:J

.field final synthetic this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;


# direct methods
.method public constructor <init>(Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;J[Ljava/lang/String;)V
    .locals 0
    .param p2, "flag"    # J
    .param p4, "pkgs"    # [Ljava/lang/String;

    .line 314
    iput-object p1, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->this$0:Lcn/nubia/server/appmgmt/NubiaHighlightsProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-wide p2, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->flag:J

    .line 316
    iput-object p4, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    .line 317
    return-void
.end method


# virtual methods
.method public filterPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 324
    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/server/appmgmt/NubiaHighlightsProducer$Filter;->acceptPackages:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    return v1

    .line 323
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v2    # "i":I
    :cond_2
    return v0

    .line 321
    :cond_3
    :goto_1
    return v1
.end method
