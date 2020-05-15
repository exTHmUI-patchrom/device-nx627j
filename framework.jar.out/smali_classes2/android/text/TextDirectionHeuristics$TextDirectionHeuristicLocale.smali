.class Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;
.super Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextDirectionHeuristicLocale"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 300
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;)V

    .line 292
    return-void
.end method


# virtual methods
.method protected defaultIsRtl()Z
    .locals 2

    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 297
    .local v0, "dir":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
