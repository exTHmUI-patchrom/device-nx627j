.class public Landroid/text/TextDirectionHeuristics;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;,
        Landroid/text/TextDirectionHeuristics$AnyStrong;,
        Landroid/text/TextDirectionHeuristics$FirstStrong;,
        Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;,
        Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicImpl;
    }
.end annotation


# static fields
.field public static final ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

.field public static final FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

.field public static final LOCALE:Landroid/text/TextDirectionHeuristic;

.field public static final LTR:Landroid/text/TextDirectionHeuristic;

.field public static final RTL:Landroid/text/TextDirectionHeuristic;

.field private static final STATE_FALSE:I = 0x1

.field private static final STATE_TRUE:I = 0x0

.field private static final STATE_UNKNOWN:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 46
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 54
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v4, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v4, v1, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 62
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v4, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0, v4, v3, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 69
    new-instance v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;

    sget-object v3, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    invoke-direct {v0, v3, v1, v2}, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicInternal;-><init>(Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;ZLandroid/text/TextDirectionHeuristics$1;)V

    sput-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 75
    sget-object v0, Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;->INSTANCE:Landroid/text/TextDirectionHeuristics$TextDirectionHeuristicLocale;

    sput-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(I)I
    .locals 1
    .param p0, "x0"    # I

    .line 35
    invoke-static {p0}, Landroid/text/TextDirectionHeuristics;->isRtlCodePoint(I)I

    move-result v0

    return v0
.end method

.method private static isRtlCodePoint(I)I
    .locals 4
    .param p0, "codePoint"    # I

    .line 88
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_0

    .line 126
    return v3

    .line 93
    :pswitch_0
    return v2

    .line 90
    :pswitch_1
    return v1

    .line 98
    :pswitch_2
    const/16 v0, 0x590

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_5

    :cond_0
    const v0, 0xfb1d

    if-gt v0, p0, :cond_1

    const v0, 0xfdcf

    if-le p0, v0, :cond_5

    :cond_1
    const v0, 0xfdf0

    if-gt v0, p0, :cond_2

    const v0, 0xfdff

    if-le p0, v0, :cond_5

    :cond_2
    const v0, 0xfe70

    if-gt v0, p0, :cond_3

    const v0, 0xfeff

    if-le p0, v0, :cond_5

    :cond_3
    const v0, 0x10800

    if-gt v0, p0, :cond_4

    const v0, 0x10fff

    if-le p0, v0, :cond_5

    :cond_4
    const v0, 0x1e800

    if-gt v0, p0, :cond_6

    const v0, 0x1efff

    if-gt p0, v0, :cond_6

    .line 105
    :cond_5
    return v2

    .line 106
    :cond_6
    const/16 v0, 0x2065

    if-gt v0, p0, :cond_7

    const/16 v0, 0x2069

    if-le p0, v0, :cond_d

    :cond_7
    const v0, 0xfff0

    if-gt v0, p0, :cond_8

    const v0, 0xfff8

    if-le p0, v0, :cond_d

    :cond_8
    const/high16 v0, 0xe0000

    if-gt v0, p0, :cond_9

    const v0, 0xe0fff

    if-le p0, v0, :cond_d

    :cond_9
    const v0, 0xfdd0

    if-gt v0, p0, :cond_a

    const v0, 0xfdef

    if-le p0, v0, :cond_d

    :cond_a
    const v0, 0xfffe

    and-int v2, p0, v0

    if-eq v2, v0, :cond_d

    const/16 v0, 0x20a0

    if-gt v0, p0, :cond_b

    const/16 v0, 0x20cf

    if-le p0, v0, :cond_d

    :cond_b
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    goto :goto_0

    .line 123
    :cond_c
    return v1

    .line 120
    :cond_d
    :goto_0
    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
