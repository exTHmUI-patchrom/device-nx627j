.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_FILLER:C = '\ufeff'

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field private static final PARCEL_SAFE_TEXT_LENGTH:I = 0x186a0

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 732
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 2077
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 2079
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 2081
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Landroid/text/Spannable;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 77
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1431
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 25
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    .line 1442
    const/4 v8, 0x0

    .line 1443
    .local v8, "mt":Landroid/text/MeasuredParagraph;
    const/4 v0, 0x0

    move-object v9, v0

    .line 1445
    .local v9, "tempMt":Landroid/text/MeasuredParagraph;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1446
    .local v0, "len":I
    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v7

    move v4, v0

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1

    move-object v8, v1

    .line 1447
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1448
    .local v1, "width":F
    cmpg-float v2, v1, p2

    if-gtz v2, :cond_2

    .line 1449
    nop

    .line 1501
    if-eqz v8, :cond_0

    .line 1502
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1504
    :cond_0
    if-eqz v9, :cond_1

    .line 1505
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1449
    :cond_1
    return-object v7

    .line 1452
    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    .line 1454
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 1455
    .local v3, "commaCount":I
    move v5, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v5, "commaCount":I
    :goto_0
    const/16 v6, 0x2c

    if-ge v3, v0, :cond_4

    .line 1456
    aget-char v10, v2, v3

    if-ne v10, v6, :cond_3

    .line 1457
    add-int/lit8 v5, v5, 0x1

    .line 1455
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1461
    .end local v3    # "i":I
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 1463
    .local v3, "remaining":I
    const/4 v10, 0x0

    .line 1464
    .local v10, "ok":I
    const-string v11, ""

    .line 1466
    .local v11, "okFormat":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1467
    .local v12, "w":I
    const/4 v13, 0x0

    .line 1468
    .local v13, "count":I
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1470
    .local v14, "widths":[F
    move-object/from16 v21, v9

    move v9, v3

    const/4 v3, 0x0

    .local v3, "i":I
    .local v9, "remaining":I
    .local v21, "tempMt":Landroid/text/MeasuredParagraph;
    :goto_1
    if-ge v3, v0, :cond_8

    .line 1471
    int-to-float v4, v12

    :try_start_2
    aget v15, v14, v3

    add-float/2addr v4, v15

    float-to-int v12, v4

    .line 1473
    aget-char v4, v2, v3

    if-ne v4, v6, :cond_7

    .line 1474
    add-int/lit8 v13, v13, 0x1

    .line 1479
    add-int/lit8 v9, v9, -0x1

    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 1480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v6, p3

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1482
    .local v4, "format":Ljava/lang/String;
    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v1, p4

    goto :goto_2

    .end local v4    # "format":Ljava/lang/String;
    :cond_5
    move-object/from16 v6, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, " "

    .end local v0    # "len":I
    .local v22, "len":I
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v0, v16

    move/from16 v23, v1

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v1    # "width":F
    .local v23, "width":F
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "format":Ljava/lang/String;
    :goto_2
    move-object v0, v4

    .line 1486
    .end local v4    # "format":Ljava/lang/String;
    .local v0, "format":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1487
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v18

    .line 1486
    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move-object/from16 v19, p5

    move-object/from16 v20, v21

    invoke-static/range {v15 .. v20}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1488
    .end local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v4, "tempMt":Landroid/text/MeasuredParagraph;
    :try_start_4
    invoke-virtual {v4}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1490
    .local v15, "moreWid":F
    int-to-float v1, v12

    add-float/2addr v1, v15

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_6

    .line 1491
    add-int/lit8 v1, v3, 0x1

    .line 1492
    .end local v10    # "ok":I
    .local v1, "ok":I
    nop

    .line 1470
    .end local v11    # "okFormat":Ljava/lang/String;
    .end local v15    # "moreWid":F
    .local v0, "okFormat":Ljava/lang/String;
    move-object v11, v0

    move v10, v1

    .end local v0    # "okFormat":Ljava/lang/String;
    .end local v1    # "ok":I
    .end local v4    # "tempMt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "ok":I
    .restart local v11    # "okFormat":Ljava/lang/String;
    .restart local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    :cond_6
    move-object/from16 v21, v4

    goto :goto_3

    .line 1501
    .end local v2    # "buf":[C
    .end local v3    # "i":I
    .end local v5    # "commaCount":I
    .end local v9    # "remaining":I
    .end local v10    # "ok":I
    .end local v11    # "okFormat":Ljava/lang/String;
    .end local v12    # "w":I
    .end local v13    # "count":I
    .end local v14    # "widths":[F
    .end local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    .end local v22    # "len":I
    .end local v23    # "width":F
    .restart local v4    # "tempMt":Landroid/text/MeasuredParagraph;
    :catchall_0
    move-exception v0

    move-object v9, v4

    goto :goto_5

    .end local v4    # "tempMt":Landroid/text/MeasuredParagraph;
    .restart local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1470
    .local v0, "len":I
    .local v1, "width":F
    .restart local v2    # "buf":[C
    .restart local v3    # "i":I
    .restart local v5    # "commaCount":I
    .restart local v9    # "remaining":I
    .restart local v10    # "ok":I
    .restart local v11    # "okFormat":Ljava/lang/String;
    .restart local v12    # "w":I
    .restart local v13    # "count":I
    .restart local v14    # "widths":[F
    :cond_7
    move-object/from16 v6, p3

    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "len":I
    .end local v1    # "width":F
    .restart local v22    # "len":I
    .restart local v23    # "width":F
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    const/16 v6, 0x2c

    goto/16 :goto_1

    .line 1501
    .end local v2    # "buf":[C
    .end local v3    # "i":I
    .end local v5    # "commaCount":I
    .end local v9    # "remaining":I
    .end local v10    # "ok":I
    .end local v11    # "okFormat":Ljava/lang/String;
    .end local v12    # "w":I
    .end local v13    # "count":I
    .end local v14    # "widths":[F
    .end local v22    # "len":I
    .end local v23    # "width":F
    :catchall_2
    move-exception v0

    move-object/from16 v6, p3

    .end local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v9, "tempMt":Landroid/text/MeasuredParagraph;
    :goto_4
    move-object/from16 v9, v21

    goto :goto_5

    .line 1497
    .restart local v0    # "len":I
    .restart local v1    # "width":F
    .restart local v2    # "buf":[C
    .restart local v5    # "commaCount":I
    .local v9, "remaining":I
    .restart local v10    # "ok":I
    .restart local v11    # "okFormat":Ljava/lang/String;
    .restart local v12    # "w":I
    .restart local v13    # "count":I
    .restart local v14    # "widths":[F
    .restart local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    :cond_8
    move-object/from16 v6, p3

    move/from16 v22, v0

    move/from16 v23, v1

    .end local v0    # "len":I
    .end local v1    # "width":F
    .restart local v22    # "len":I
    .restart local v23    # "width":F
    :try_start_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1498
    .local v0, "out":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7, v1, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1499
    nop

    .line 1501
    if-eqz v8, :cond_9

    .line 1502
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1504
    :cond_9
    move-object/from16 v1, v21

    if-eqz v1, :cond_a

    .line 1505
    .end local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v1, "tempMt":Landroid/text/MeasuredParagraph;
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1499
    :cond_a
    return-object v0

    .line 1501
    .end local v0    # "out":Landroid/text/SpannableStringBuilder;
    .end local v1    # "tempMt":Landroid/text/MeasuredParagraph;
    .end local v2    # "buf":[C
    .end local v5    # "commaCount":I
    .end local v9    # "remaining":I
    .end local v10    # "ok":I
    .end local v11    # "okFormat":Ljava/lang/String;
    .end local v12    # "w":I
    .end local v13    # "count":I
    .end local v14    # "widths":[F
    .end local v22    # "len":I
    .end local v23    # "width":F
    .restart local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    :catchall_3
    move-exception v0

    move-object/from16 v1, v21

    move-object v9, v1

    .end local v21    # "tempMt":Landroid/text/MeasuredParagraph;
    .restart local v1    # "tempMt":Landroid/text/MeasuredParagraph;
    goto :goto_5

    .end local v1    # "tempMt":Landroid/text/MeasuredParagraph;
    .local v9, "tempMt":Landroid/text/MeasuredParagraph;
    :catchall_4
    move-exception v0

    move-object/from16 v6, p3

    :goto_5
    if-eqz v8, :cond_b

    .line 1502
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1504
    :cond_b
    if-eqz v9, :cond_c

    .line 1505
    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_c
    throw v0
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .line 1619
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1620
    const-string v0, ""

    return-object v0

    .line 1623
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1624
    aget-object v0, p0, v1

    return-object v0

    .line 1627
    :cond_1
    const/4 v0, 0x0

    .line 1628
    .local v0, "spanned":Z
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 1629
    .local v4, "piece":Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    .line 1630
    const/4 v0, 0x1

    .line 1631
    goto :goto_1

    .line 1628
    .end local v4    # "piece":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    .line 1636
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1637
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    array-length v3, p0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, p0, v1

    .line 1641
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    if-nez v4, :cond_4

    const-string/jumbo v5, "null"

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1637
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1643
    :cond_5
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 1645
    .end local v2    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1646
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, p0, v1

    .line 1647
    .restart local v4    # "piece":Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1646
    .end local v4    # "piece":Ljava/lang/CharSequence;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1649
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .line 1082
    if-nez p3, :cond_0

    .line 1083
    const-class p3, Ljava/lang/Object;

    .line 1086
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 1088
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 1089
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1090
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1091
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 1093
    .local v4, "fl":I
    if-ge v2, p1, :cond_1

    .line 1094
    move v2, p1

    .line 1095
    :cond_1
    if-le v3, p2, :cond_2

    .line 1096
    move v3, p2

    .line 1098
    :cond_2
    aget-object v5, v0, v1

    sub-int v6, v2, p1

    add-int/2addr v6, p5

    sub-int v7, v3, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1088
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v4    # "fl":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method static couldAffectRtl(C)Z
    .locals 1
    .param p0, "c"    # C

    .line 1517
    const/16 v0, 0x590

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_1

    const/16 v0, 0x202e

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_2

    const/16 v0, 0x2069

    if-le p0, v0, :cond_6

    :cond_2
    const v0, 0xd800

    if-gt v0, p0, :cond_3

    const v0, 0xdfff

    if-le p0, v0, :cond_6

    :cond_3
    const v0, 0xfb1d

    if-gt v0, p0, :cond_4

    const v0, 0xfdff

    if-le p0, v0, :cond_6

    :cond_4
    const v0, 0xfe70

    if-gt v0, p0, :cond_5

    const v0, 0xfefe

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .line 1867
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1870
    :cond_0
    const/4 v0, -0x1

    .line 1871
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1872
    .local v2, "length":I
    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 1873
    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    .line 1874
    goto :goto_0

    .line 1876
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    .line 1877
    .local v3, "expectedDelimiterPos":I
    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    .line 1879
    return v4

    .line 1881
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 1882
    return v4

    .line 1884
    .end local v3    # "expectedDelimiterPos":I
    :cond_3
    goto :goto_0

    .line 1885
    :cond_4
    return v1

    .line 1868
    .end local v0    # "pos":I
    .end local v2    # "length":I
    :cond_5
    :goto_1
    return v1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 3
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .line 1533
    add-int v0, p1, p2

    .line 1534
    .local v0, "end":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1535
    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1536
    const/4 v2, 0x0

    return v2

    .line 1534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 883
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 884
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 885
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 887
    .local v1, "os":[Ljava/lang/Object;
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 888
    aget-object v3, v1, v2

    .line 889
    .local v3, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 890
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 889
    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 889
    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 887
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    goto :goto_0

    .line 896
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "os":[Ljava/lang/Object;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 897
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": (no spans)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 899
    :goto_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .line 1200
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .line 1220
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 1222
    invoke-static {p3}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v7

    .line 1220
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 25
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    .line 1245
    move-object/from16 v11, p7

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 1247
    .local v12, "len":I
    const/4 v0, 0x0

    move-object v6, v0

    .line 1249
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    const/4 v3, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v13, v1

    .line 1250
    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .local v13, "mt":Landroid/text/MeasuredParagraph;
    :try_start_1
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v1

    move v14, v1

    .line 1252
    .local v14, "width":F
    cmpg-float v1, v14, p2

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    .line 1253
    if-eqz v10, :cond_0

    .line 1254
    invoke-interface {v10, v2, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1257
    :cond_0
    nop

    .line 1323
    if-eqz v13, :cond_1

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1257
    :cond_1
    return-object v7

    .line 1262
    :cond_2
    move-object/from16 v15, p1

    :try_start_2
    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v16, v1

    .line 1263
    .local v16, "ellipsiswid":F
    sub-float v1, p2, v16

    .line 1265
    .end local p2    # "avail":F
    .local v1, "avail":F
    const/4 v3, 0x0

    .line 1266
    .local v3, "left":I
    move v4, v12

    .line 1267
    .local v4, "right":I
    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    .line 1279
    .end local v1    # "avail":F
    .end local v4    # "right":I
    .local v8, "right":I
    .local v17, "avail":F
    :goto_0
    move/from16 v17, v1

    move v8, v4

    goto :goto_2

    .line 1269
    .end local v8    # "right":I
    .end local v17    # "avail":F
    .restart local v1    # "avail":F
    .restart local v4    # "right":I
    :cond_3
    :try_start_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v5, :cond_4

    .line 1270
    invoke-virtual {v13, v12, v2, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v12, v5

    goto :goto_0

    .line 1271
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v6, 0x1

    if-eq v9, v5, :cond_6

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v5, :cond_5

    goto :goto_1

    .line 1274
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-virtual {v13, v12, v2, v5}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v12, v5

    .line 1275
    invoke-virtual {v13, v4, v12}, Landroid/text/MeasuredParagraph;->measure(II)F

    move-result v5

    sub-float/2addr v1, v5

    .line 1276
    invoke-virtual {v13, v4, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 1272
    :cond_6
    :goto_1
    invoke-virtual {v13, v12, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v5

    goto :goto_0

    .line 1279
    .end local v1    # "avail":F
    .end local v4    # "right":I
    .restart local v8    # "right":I
    .restart local v17    # "avail":F
    :goto_2
    if-eqz v10, :cond_7

    .line 1280
    :try_start_4
    invoke-interface {v10, v3, v8}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    goto :goto_3

    .line 1323
    .end local v3    # "left":I
    .end local v8    # "right":I
    .end local v14    # "width":F
    .end local v16    # "ellipsiswid":F
    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 1283
    .restart local v3    # "left":I
    .restart local v8    # "right":I
    .restart local v14    # "width":F
    .restart local v16    # "ellipsiswid":F
    :cond_7
    :goto_3
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    move-object v6, v1

    .line 1284
    .local v6, "buf":[C
    instance-of v1, v7, Landroid/text/Spanned;

    if-eqz v1, :cond_8

    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    nop

    .line 1286
    .local v0, "sp":Landroid/text/Spanned;
    :cond_8
    sub-int v5, v8, v3

    .line 1287
    .local v5, "removed":I
    sub-int v18, v12, v5

    .line 1288
    .local v18, "remaining":I
    if-eqz p4, :cond_e

    .line 1289
    if-lez v18, :cond_9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v5, v1, :cond_9

    .line 1290
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v2, v1, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1291
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1293
    .end local v3    # "left":I
    .local v19, "left":I
    :cond_9
    move/from16 v19, v3

    move/from16 v1, v19

    .local v1, "i":I
    :goto_4
    if-ge v1, v8, :cond_a

    .line 1294
    const v3, 0xfeff

    aput-char v3, v6, v1

    .line 1293
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1296
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v2, v12}, Ljava/lang/String;-><init>([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v1

    .line 1297
    .local v4, "s":Ljava/lang/String;
    if-nez v0, :cond_c

    .line 1298
    nop

    .line 1323
    if-eqz v13, :cond_b

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1298
    :cond_b
    return-object v4

    .line 1300
    :cond_c
    :try_start_5
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v20, v1

    .line 1301
    .local v20, "ss":Landroid/text/SpannableString;
    const/4 v2, 0x0

    const-class v21, Ljava/lang/Object;

    const/16 v22, 0x0

    move-object v1, v0

    move v3, v12

    move-object/from16 v23, v4

    move-object/from16 v4, v21

    .end local v4    # "s":Ljava/lang/String;
    .local v23, "s":Ljava/lang/String;
    move/from16 v21, v5

    move-object/from16 v5, v20

    .end local v5    # "removed":I
    .local v21, "removed":I
    move-object v9, v6

    move/from16 v6, v22

    .end local v6    # "buf":[C
    .local v9, "buf":[C
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1302
    nop

    .line 1323
    if-eqz v13, :cond_d

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1302
    :cond_d
    return-object v20

    .line 1305
    .end local v9    # "buf":[C
    .end local v19    # "left":I
    .end local v20    # "ss":Landroid/text/SpannableString;
    .end local v21    # "removed":I
    .end local v23    # "s":Ljava/lang/String;
    .restart local v3    # "left":I
    .restart local v5    # "removed":I
    .restart local v6    # "buf":[C
    :cond_e
    move/from16 v21, v5

    move-object v9, v6

    .end local v5    # "removed":I
    .end local v6    # "buf":[C
    .restart local v9    # "buf":[C
    .restart local v21    # "removed":I
    if-nez v18, :cond_10

    .line 1306
    :try_start_6
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1323
    if-eqz v13, :cond_f

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1306
    :cond_f
    return-object v1

    .line 1309
    :cond_10
    if-nez v0, :cond_12

    .line 1310
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v18, v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1311
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v9, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1312
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    sub-int v2, v12, v8

    invoke-virtual {v1, v9, v8, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1314
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1323
    if-eqz v13, :cond_11

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1314
    :cond_11
    return-object v2

    .line 1317
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    :try_start_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1318
    .local v1, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, v7, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1319
    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1320
    invoke-virtual {v1, v7, v8, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1321
    nop

    .line 1323
    if-eqz v13, :cond_13

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 1321
    :cond_13
    return-object v1

    .line 1323
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v3    # "left":I
    .end local v8    # "right":I
    .end local v9    # "buf":[C
    .end local v14    # "width":F
    .end local v16    # "ellipsiswid":F
    .end local v17    # "avail":F
    .end local v18    # "remaining":I
    .end local v21    # "removed":I
    .local v1, "avail":F
    :catchall_1
    move-exception v0

    move/from16 v17, v1

    goto :goto_6

    .end local v1    # "avail":F
    .restart local p2    # "avail":F
    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    .end local p2    # "avail":F
    .restart local v17    # "avail":F
    :goto_5
    move/from16 v17, p2

    goto :goto_6

    .end local v13    # "mt":Landroid/text/MeasuredParagraph;
    .end local v17    # "avail":F
    .local v6, "mt":Landroid/text/MeasuredParagraph;
    .restart local p2    # "avail":F
    :catchall_4
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v17, p2

    move-object v13, v6

    .end local v6    # "mt":Landroid/text/MeasuredParagraph;
    .end local p2    # "avail":F
    .restart local v13    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v17    # "avail":F
    :goto_6
    if-eqz v13, :cond_14

    .line 1324
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_14
    throw v0
.end method

.method public static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 491
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .line 542
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 544
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    .local v3, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 545
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 546
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 548
    :cond_1
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 549
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    .line 548
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    .end local v2    # "i":I
    :cond_3
    return v0

    .line 554
    .end local v3    # "length":I
    :cond_4
    return v1
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .line 953
    array-length v0, p1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    .line 957
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 960
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 961
    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 962
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_3

    .line 963
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    .line 964
    .local v2, "next":C
    if-ne v2, v3, :cond_0

    .line 965
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 966
    add-int/lit8 v1, v1, 0x1

    .line 967
    goto :goto_0

    .line 968
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 969
    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 970
    .local v3, "which":I
    if-ltz v3, :cond_2

    .line 974
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 979
    add-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 980
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v1, v4

    .line 981
    goto :goto_0

    .line 975
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v2    # "next":C
    .end local v3    # "which":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 988
    .end local v1    # "i":I
    :cond_4
    goto :goto_1

    .line 986
    :catch_0
    move-exception v1

    .line 989
    :goto_1
    return-object v0

    .line 954
    .end local v0    # "ssb":Landroid/text/SpannableStringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max of 9 values are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 496
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "count"    # I

    .line 1993
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1150017

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 8
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .line 1771
    if-gez p1, :cond_0

    .line 1772
    const/4 v0, 0x0

    return v0

    .line 1777
    :cond_0
    const/4 v0, 0x0

    .line 1779
    .local v0, "mode":I
    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_1

    .line 1780
    or-int/lit16 v0, v0, 0x1000

    .line 1782
    :cond_1
    and-int/lit16 v1, p2, 0x6000

    if-nez v1, :cond_2

    .line 1783
    return v0

    .line 1788
    :cond_2
    move v1, p1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x27

    const/16 v3, 0x22

    if-lez v1, :cond_4

    .line 1789
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1791
    .local v4, "c":C
    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_3

    .line 1792
    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3

    .line 1793
    goto :goto_1

    .line 1788
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1799
    .end local v4    # "c":C
    :cond_4
    :goto_1
    move v4, v1

    .line 1800
    .local v4, "j":I
    :goto_2
    if-lez v4, :cond_6

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    .local v6, "c":C
    const/16 v7, 0x20

    if-eq v5, v7, :cond_5

    const/16 v5, 0x9

    if-ne v6, v5, :cond_6

    .line 1801
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1803
    .end local v6    # "c":C
    :cond_6
    if-eqz v4, :cond_12

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    goto :goto_7

    .line 1809
    :cond_7
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1810
    if-eq v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x2000

    .line 1811
    :cond_8
    return v0

    .line 1816
    :cond_9
    if-ne v1, v4, :cond_a

    .line 1817
    return v0

    .line 1822
    :cond_a
    :goto_3
    if-lez v4, :cond_c

    .line 1823
    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1825
    .local v5, "c":C
    if-eq v5, v3, :cond_b

    if-eq v5, v2, :cond_b

    .line 1826
    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_b

    .line 1827
    goto :goto_4

    .line 1822
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 1831
    .end local v5    # "c":C
    :cond_c
    :goto_4
    if-lez v4, :cond_11

    .line 1832
    add-int/lit8 v2, v4, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1834
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_d

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_d

    const/16 v5, 0x21

    if-ne v2, v5, :cond_11

    .line 1838
    :cond_d
    if-ne v2, v3, :cond_10

    .line 1839
    add-int/lit8 v5, v4, -0x2

    .local v5, "k":I
    :goto_5
    if-ltz v5, :cond_10

    .line 1840
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1842
    if-ne v2, v3, :cond_e

    .line 1843
    return v0

    .line 1846
    :cond_e
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1847
    goto :goto_6

    .line 1839
    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 1852
    .end local v5    # "k":I
    :cond_10
    :goto_6
    or-int/lit16 v3, v0, 0x4000

    return v3

    .line 1856
    .end local v2    # "c":C
    :cond_11
    return v0

    .line 1804
    :cond_12
    :goto_7
    or-int/lit16 v2, v0, 0x2000

    return v2
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 103
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 104
    :cond_0
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    .line 105
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_1

    .line 106
    :cond_1
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_2

    .line 107
    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_1

    .line 108
    :cond_2
    instance-of v1, p0, Landroid/text/GetChars;

    if-eqz v1, :cond_3

    .line 109
    move-object v1, p0

    check-cast v1, Landroid/text/GetChars;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_1

    .line 111
    :cond_3
    move v1, p4

    move p4, p1

    .local v1, "destoff":I
    .local p4, "i":I
    :goto_0
    if-ge p4, p2, :cond_4

    .line 112
    add-int/lit8 v2, v1, 0x1

    .local v2, "destoff":I
    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 111
    .end local v1    # "destoff":I
    add-int/lit8 p4, p4, 0x1

    move v1, v2

    goto :goto_0

    .line 114
    .end local v2    # "destoff":I
    .end local p4    # "i":I
    .restart local v1    # "destoff":I
    :cond_4
    move p4, v1

    .end local v1    # "destoff":I
    .local p4, "destoff":I
    :goto_1
    return-void
.end method

.method public static getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 92
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "\u2025"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u2026"

    :goto_0
    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 1979
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1980
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "debug.force_rtl"

    .line 1982
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1983
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1984
    :cond_2
    nop

    .line 1979
    :goto_0
    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 1028
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1030
    .local v0, "len":I
    if-ne p1, v0, :cond_0

    .line 1031
    return v0

    .line 1032
    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1

    .line 1033
    return v0

    .line 1035
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1037
    .local v1, "c":C
    const v2, 0xd800

    if-lt v1, v2, :cond_3

    const v2, 0xdbff

    if-gt v1, v2, :cond_3

    .line 1038
    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1040
    .local v2, "c1":C
    const v3, 0xdc00

    if-lt v2, v3, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 1041
    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 1043
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 1044
    .end local v2    # "c1":C
    :goto_0
    goto :goto_1

    .line 1045
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1048
    :goto_1
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 1049
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1052
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_5

    .line 1053
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1054
    .local v4, "start":I
    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1056
    .local v5, "end":I
    if-ge v4, p1, :cond_4

    if-le v5, p1, :cond_4

    .line 1057
    move p1, v5

    .line 1052
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1061
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_5
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 993
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 994
    return v0

    .line 995
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 996
    return v0

    .line 998
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1000
    .local v1, "c":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_3

    const v2, 0xdfff

    if-gt v1, v2, :cond_3

    .line 1001
    add-int/lit8 v2, p1, -0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1003
    .local v2, "c1":C
    const v3, 0xd800

    if-lt v2, v3, :cond_2

    const v3, 0xdbff

    if-gt v2, v3, :cond_2

    .line 1004
    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    .line 1006
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 1007
    .end local v2    # "c1":C
    :goto_0
    goto :goto_1

    .line 1008
    :cond_3
    add-int/lit8 p1, p1, -0x1

    .line 1011
    :goto_1
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    .line 1012
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1015
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    nop

    .local v0, "i":I
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    .line 1016
    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1017
    .local v3, "start":I
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 1019
    .local v4, "end":I
    if-ge v3, p1, :cond_4

    if-le v4, p1, :cond_4

    .line 1020
    move p1, v3

    .line 1015
    .end local v3    # "start":I
    .end local v4    # "end":I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1024
    .end local v0    # "i":I
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    :cond_5
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 518
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 520
    .local v0, "len":I
    const/4 v1, 0x0

    .line 521
    .local v1, "start":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_0

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    move v3, v0

    .line 526
    .local v3, "end":I
    :goto_1
    if-le v3, v1, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v2, :cond_1

    .line 527
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 530
    :cond_1
    sub-int v2, v3, v1

    return v2
.end method

.method public static hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 8
    .param p0, "spanned"    # Landroid/text/Spanned;

    .line 2001
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2002
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/text/style/CharacterStyle;

    aput-object v3, v2, v0

    const-class v3, Landroid/text/style/ParagraphStyle;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v4, Landroid/text/style/UpdateAppearance;

    aput-object v4, v2, v3

    .line 2004
    .local v2, "styleClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 2005
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, -0x1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 2006
    return v1

    .line 2004
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2009
    :cond_2
    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1574
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1575
    .local v2, "c":C
    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 1596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1590
    :pswitch_0
    const-string v3, "&#39;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    goto :goto_1

    .line 1583
    :pswitch_1
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1584
    goto :goto_1

    .line 1580
    :cond_0
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    goto :goto_1

    .line 1577
    :cond_1
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    goto :goto_1

    .line 1593
    :cond_2
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1594
    nop

    .line 1573
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1599
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 117
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 123
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 124
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    .line 126
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 159
    :cond_0
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 160
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1

    .line 161
    return v1

    .line 159
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "i":I
    :cond_2
    return v2

    .line 134
    :cond_3
    :goto_1
    const/16 v1, 0x1f4

    .line 135
    .local v1, "INDEX_INCREMENT":I
    const/16 v3, 0x1f4

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    .line 137
    .local v3, "temp":[C
    :goto_2
    if-ge p2, p3, :cond_7

    .line 138
    add-int/lit16 v4, p2, 0x1f4

    .line 139
    .local v4, "segend":I
    if-le v4, p3, :cond_4

    .line 140
    move v4, p3

    .line 142
    :cond_4
    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 144
    sub-int v6, v4, p2

    .line 145
    .local v6, "count":I
    nop

    .local v5, "i":I
    :goto_3
    if-ge v5, v6, :cond_6

    .line 146
    aget-char v7, v3, v5

    if-ne v7, p1, :cond_5

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 148
    add-int v2, v5, p2

    return v2

    .line 145
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 152
    .end local v5    # "i":I
    :cond_6
    move p2, v4

    .line 153
    .end local v4    # "segend":I
    .end local v6    # "count":I
    goto :goto_2

    .line 155
    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    .line 156
    return v2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .line 225
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .line 229
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 234
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 235
    .local v0, "nlen":I
    if-nez v0, :cond_0

    .line 236
    return p2

    .line 238
    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 241
    .local v2, "c":C
    :goto_0
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 242
    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_1

    .line 243
    nop

    .line 256
    return v4

    .line 246
    :cond_1
    if-gez p2, :cond_2

    .line 247
    return v4

    .line 250
    :cond_2
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 251
    return p2

    .line 254
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1697
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1698
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1699
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1700
    .local v3, "cp":I
    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1701
    return v1

    .line 1698
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 1704
    .end local v2    # "i":I
    .end local v3    # "cp":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 481
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .param p0, "c"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1683
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1684
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1657
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1658
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1659
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1660
    .local v3, "cp":I
    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 1661
    .local v4, "gc":I
    const/16 v5, 0xf

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    const/16 v5, 0x13

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    .line 1668
    const/4 v1, 0x1

    return v1

    .line 1658
    .end local v4    # "gc":I
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 1671
    .end local v2    # "i":I
    .end local v3    # "cp":I
    :cond_1
    return v1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .param p0, "c"    # C

    .line 1711
    const/16 v0, 0x20

    .line 1712
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1713
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 1720
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1721
    .local v0, "len":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1722
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1723
    return v1

    .line 1721
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1726
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .line 340
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 341
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const-string v1, ""

    return-object v1

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 347
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .line 317
    array-length v0, p1

    .line 318
    .local v0, "length":I
    if-nez v0, :cond_0

    .line 319
    const-string v1, ""

    return-object v1

    .line 321
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 324
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 325
    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 167
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .line 171
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 173
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 174
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .line 181
    const/4 v0, -0x1

    if-gez p3, :cond_0

    .line 182
    return v0

    .line 183
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_1

    .line 184
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    .line 186
    :cond_1
    add-int/lit8 v1, p3, 0x1

    .line 188
    .local v1, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 190
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v3, p0, Landroid/text/GetChars;

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/StringBuffer;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 217
    :cond_2
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-lt v3, p2, :cond_4

    .line 218
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_3

    .line 219
    return v3

    .line 217
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 221
    .end local v3    # "i":I
    :cond_4
    return v0

    .line 192
    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    .line 193
    .local v3, "INDEX_INCREMENT":I
    const/16 v4, 0x1f4

    invoke-static {v4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v4

    .line 195
    .local v4, "temp":[C
    :goto_2
    if-ge p2, v1, :cond_9

    .line 196
    add-int/lit16 v5, v1, -0x1f4

    .line 197
    .local v5, "segstart":I
    if-ge v5, p2, :cond_6

    .line 198
    move v5, p2

    .line 200
    :cond_6
    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 202
    sub-int v6, v1, v5

    .line 203
    .local v6, "count":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_3
    if-ltz v7, :cond_8

    .line 204
    aget-char v8, v4, v7

    if-ne v8, p1, :cond_7

    .line 205
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 206
    add-int v0, v7, v5

    return v0

    .line 203
    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 210
    .end local v7    # "i":I
    :cond_8
    move v1, v5

    .line 211
    .end local v5    # "segstart":I
    .end local v6    # "count":I
    goto :goto_2

    .line 213
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    .line 214
    return v0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 501
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "separator"    # Ljava/lang/String;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "avail"    # F
    .param p5, "moreId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .line 1361
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_0

    .line 1362
    const-string v0, ""

    return-object v0

    .line 1364
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1365
    .local v0, "totalLen":I
    if-nez v0, :cond_1

    .line 1366
    const-string v1, ""

    return-object v1

    .line 1371
    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    .line 1372
    const/4 v2, 0x0

    .line 1373
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 1373
    .local v3, "bidiFormatter":Landroid/text/BidiFormatter;
    goto :goto_0

    .line 1375
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "bidiFormatter":Landroid/text/BidiFormatter;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1376
    .restart local v2    # "res":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v3

    .line 1379
    .restart local v3    # "bidiFormatter":Landroid/text/BidiFormatter;
    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1380
    .local v4, "output":Landroid/text/SpannableStringBuilder;
    new-array v5, v0, [I

    .line 1381
    .local v5, "endIndexes":[I
    move v6, v1

    .line 1381
    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_4

    .line 1382
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1383
    add-int/lit8 v7, v0, -0x1

    if-eq v6, v7, :cond_3

    .line 1384
    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1386
    :cond_3
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    aput v7, v5, v6

    .line 1381
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1389
    .end local v6    # "i":I
    :cond_4
    add-int/lit8 v6, v0, -0x1

    .line 1389
    .restart local v6    # "i":I
    :goto_2
    if-ltz v6, :cond_8

    .line 1391
    aget v7, v5, v6

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 1393
    sub-int v7, v0, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 1394
    .local v7, "remainingElements":I
    if-lez v7, :cond_6

    .line 1395
    if-nez v2, :cond_5

    .line 1396
    const-string/jumbo v8, "\u2026"

    goto :goto_3

    .line 1397
    :cond_5
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v2, p5, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1398
    .local v8, "morePiece":Ljava/lang/CharSequence;
    :goto_3
    invoke-virtual {v3, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1399
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1402
    .end local v8    # "morePiece":Ljava/lang/CharSequence;
    :cond_6
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {p3, v4, v1, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v8

    .line 1403
    .local v8, "width":F
    cmpg-float v9, v8, p4

    if-gtz v9, :cond_7

    .line 1404
    return-object v4

    .line 1389
    .end local v7    # "remainingElements":I
    .end local v8    # "width":F
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1407
    .end local v6    # "i":I
    :cond_8
    const-string v1, ""

    return-object v1
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 486
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .line 1545
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1546
    :try_start_0
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1547
    .local v1, "buf":[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1548
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    if-eqz v1, :cond_0

    array-length v0, v1

    if-ge v0, p0, :cond_1

    .line 1551
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 1553
    :cond_1
    return-object v1

    .line 1548
    .end local v1    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1945
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .line 1065
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1066
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .line 1557
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1558
    return-void

    .line 1560
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1561
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1562
    monitor-exit v0

    .line 1563
    return-void

    .line 1562
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .line 262
    const/4 v0, 0x2

    mul-int/2addr v0, p4

    .line 263
    .local v0, "tempLen":I
    if-lt v0, p4, :cond_2

    .line 267
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 269
    .local v1, "temp":[C
    add-int v2, p1, p4

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 270
    add-int v2, p3, p4

    invoke-static {p2, p3, v2, v1, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 272
    const/4 v2, 0x1

    .line 273
    .local v2, "match":Z
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 274
    aget-char v4, v1, v3

    add-int v5, v3, p4

    aget-char v5, v1, v5

    if-eq v4, v5, :cond_0

    .line 275
    const/4 v2, 0x0

    .line 276
    goto :goto_1

    .line 273
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 281
    return v2

    .line 265
    .end local v1    # "temp":[C
    .end local v2    # "match":Z
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 1907
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 1908
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1910
    .local v1, "count":I
    const/4 v2, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v2

    .local v0, "i":I
    .local v1, "copy":[Ljava/lang/Object;, "[TT;"
    .local v3, "count":I
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    .line 1911
    aget-object v4, p0, v0

    .line 1912
    .local v4, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 1913
    .local v5, "start":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 1915
    .local v6, "end":I
    if-ne v5, v6, :cond_0

    .line 1916
    if-nez v1, :cond_1

    .line 1917
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, [Ljava/lang/Object;

    .line 1918
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1919
    move v3, v0

    goto :goto_1

    .line 1922
    :cond_0
    if-eqz v1, :cond_1

    .line 1923
    aput-object v4, v1, v3

    .line 1924
    add-int/lit8 v3, v3, 0x1

    .line 1910
    .end local v4    # "span":Ljava/lang/Object;, "TT;"
    .end local v5    # "start":I
    .end local v6    # "end":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1929
    .end local v0    # "i":I
    :cond_2
    if-eqz v1, :cond_3

    .line 1930
    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 1931
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1932
    return-object v0

    .line 1934
    .end local v0    # "result":[Ljava/lang/Object;, "[TT;"
    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .line 908
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 910
    .local v0, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 911
    aget-object v3, p1, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    .line 913
    .local v3, "where":I
    if-ltz v3, :cond_0

    .line 914
    aget-object v4, p1, v2

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 910
    .end local v3    # "where":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 918
    .end local v2    # "i":I
    :cond_1
    nop

    .local v1, "i":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 919
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 920
    .local v2, "start":I
    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 922
    .local v3, "end":I
    if-ltz v2, :cond_2

    .line 923
    aget-object v4, p2, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 918
    .end local v2    # "start":I
    .end local v3    # "end":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 927
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public static safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 509
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 365
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 367
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .line 381
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 384
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 465
    if-nez p0, :cond_0

    .line 466
    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    .line 468
    return-object p0

    .line 469
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 470
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 472
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 292
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 293
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 294
    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 295
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 297
    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 299
    :cond_2
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 300
    .local v0, "temp":[C
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 301
    new-instance v2, Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    .line 302
    .local v1, "ret":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 304
    return-object v1
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 18
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "copySpans"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1115
    new-instance v2, Landroid/icu/text/Edits;

    invoke-direct {v2}, Landroid/icu/text/Edits;-><init>()V

    .line 1116
    .local v2, "edits":Landroid/icu/text/Edits;
    if-nez p2, :cond_1

    .line 1117
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 1119
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    return-object v4

    .line 1122
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_1
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    .line 1124
    .local v3, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1126
    return-object v1

    .line 1129
    :cond_2
    invoke-virtual {v2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v4

    .line 1130
    .local v4, "iterator":Landroid/icu/text/Edits$Iterator;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 1131
    .local v5, "sourceLength":I
    move-object v6, v1

    check-cast v6, Landroid/text/Spanned;

    .line 1132
    .local v6, "spanned":Landroid/text/Spanned;
    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    .line 1133
    .local v7, "spans":[Ljava/lang/Object;
    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v10, v7, v8

    .line 1134
    .local v10, "span":Ljava/lang/Object;
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 1135
    .local v11, "sourceStart":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 1136
    .local v12, "sourceEnd":I
    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    .line 1139
    .local v13, "flags":I
    if-ne v11, v5, :cond_3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    goto :goto_2

    .line 1140
    :cond_3
    invoke-static {v4, v11}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v14

    .line 1141
    .local v14, "destStart":I
    :goto_2
    if-ne v12, v5, :cond_4

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    goto :goto_3

    .line 1142
    :cond_4
    invoke-static {v4, v12}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v15

    :goto_3
    move/from16 v16, v15

    .line 1143
    .local v16, "destEnd":I
    move/from16 v0, v16

    invoke-virtual {v3, v10, v14, v0, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1133
    .end local v10    # "span":Ljava/lang/Object;
    .end local v11    # "sourceStart":I
    .end local v12    # "sourceEnd":I
    .end local v13    # "flags":I
    .end local v14    # "destStart":I
    .end local v16    # "destEnd":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 1145
    :cond_5
    return-object v3
.end method

.method private static toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .locals 2
    .param p0, "iterator"    # Landroid/icu/text/Edits$Iterator;
    .param p1, "sourceIndex"    # I

    .line 1151
    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    .line 1152
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1153
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    .line 1164
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 1168
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "charSequence"    # Ljava/lang/CharSequence;

    .line 2021
    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 2023
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    .line 2025
    :cond_0
    return-object p0
.end method

.method public static trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 2053
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const v0, 0x186a0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    .line 2068
    .local p0, "text":Ljava/lang/CharSequence;, "TT;"
    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2069
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_1

    .line 2070
    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2071
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2072
    add-int/lit8 p1, p1, -0x1

    .line 2074
    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2069
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .line 1965
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .line 1955
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "end"    # Ljava/lang/String;

    .line 2034
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2035
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2036
    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 680
    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 681
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 684
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    .line 685
    .local v2, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 692
    .local v3, "os":[Ljava/lang/Object;
    move v4, v0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 693
    aget-object v5, v3, v4

    .line 694
    .local v5, "o":Ljava/lang/Object;
    aget-object v6, v3, v4

    .line 696
    .local v6, "prop":Ljava/lang/Object;
    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 697
    move-object v7, v6

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    .line 700
    :cond_0
    instance-of v7, v6, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_3

    .line 701
    move-object v7, v6

    check-cast v7, Landroid/text/ParcelableSpan;

    .line 702
    .local v7, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v7}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v8

    .line 703
    .local v8, "spanTypeId":I
    if-lt v8, v1, :cond_2

    const/16 v9, 0x1a

    if-le v8, v9, :cond_1

    goto :goto_1

    .line 708
    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    invoke-interface {v7, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 710
    invoke-static {p1, v2, v5}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "prop":Ljava/lang/Object;
    .end local v7    # "ps":Landroid/text/ParcelableSpan;
    .end local v8    # "spanTypeId":I
    goto :goto_2

    .line 704
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v6    # "prop":Ljava/lang/Object;
    .restart local v7    # "ps":Landroid/text/ParcelableSpan;
    .restart local v8    # "spanTypeId":I
    :cond_2
    :goto_1
    const-string v9, "TextUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "External class \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    .end local v5    # "o":Ljava/lang/Object;
    .end local v6    # "prop":Ljava/lang/Object;
    .end local v7    # "ps":Landroid/text/ParcelableSpan;
    .end local v8    # "spanTypeId":I
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 715
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    .end local v2    # "sp":Landroid/text/Spanned;
    .end local v3    # "os":[Ljava/lang/Object;
    goto :goto_3

    .line 717
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    if-eqz p0, :cond_6

    .line 719
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 721
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    :goto_3
    return-void
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .line 727
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    return-void
.end method
