.class Landroid/text/TextDirectionHeuristics$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 208
    const/4 v0, 0x2

    .line 209
    .local v0, "result":I
    const/4 v1, 0x0

    .line 210
    .local v1, "openIsolateCount":I
    move v2, p2

    .local v2, "i":I
    add-int v3, p2, p3

    .line 211
    .local v3, "end":I
    :goto_0
    if-ge v2, v3, :cond_3

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 213
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 214
    .local v4, "cp":I
    const/16 v5, 0x2066

    if-gt v5, v4, :cond_0

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_0
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_1

    .line 217
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 218
    :cond_1
    if-nez v1, :cond_2

    .line 220
    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->access$100(I)I

    move-result v0

    .line 212
    :cond_2
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 223
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "cp":I
    :cond_3
    return v0
.end method
