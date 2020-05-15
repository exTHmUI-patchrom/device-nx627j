.class public final Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParser.java"

# interfaces
.implements Landroid/content/res/FontResourcesParser$FamilyResourceEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/FontResourcesParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderResourceEntry"
.end annotation


# instance fields
.field private final mCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mProviderAuthority:Ljava/lang/String;

.field private final mProviderPackage:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 53
    .local p4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getCerts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mCerts:Ljava/util/List;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->mQuery:Ljava/lang/String;

    return-object v0
.end method
