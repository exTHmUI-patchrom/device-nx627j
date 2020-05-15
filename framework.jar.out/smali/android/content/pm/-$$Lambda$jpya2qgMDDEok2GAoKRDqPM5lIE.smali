.class public final synthetic Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;

    invoke-direct {v0}, Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;-><init>()V

    sput-object v0, Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;->INSTANCE:Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v0}, Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    check-cast v0, Landroid/content/pm/PackageSharedLibraryUpdater;

    return-object v0
.end method
