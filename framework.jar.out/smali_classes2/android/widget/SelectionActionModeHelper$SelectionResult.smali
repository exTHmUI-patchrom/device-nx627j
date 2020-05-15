.class final Landroid/widget/SelectionActionModeHelper$SelectionResult;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionResult"
.end annotation


# instance fields
.field private final mClassification:Landroid/view/textclassifier/TextClassification;

.field private final mEnd:I

.field private final mSelection:Landroid/view/textclassifier/TextSelection;

.field private final mStart:I


# direct methods
.method constructor <init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    .line 1094
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    .line 1095
    iput-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    .line 1096
    iput-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    .line 1097
    return-void
.end method

.method static synthetic access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1085
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mStart:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1085
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mEnd:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1085
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;
    .locals 1
    .param p0, "x0"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 1085
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionResult;->mSelection:Landroid/view/textclassifier/TextSelection;

    return-object v0
.end method
