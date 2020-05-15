.class public Lcom/google/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/pdu/PduComposer$BufferStack;,
        Lcom/google/android/mms/pdu/PduComposer$PositionMarker;,
        Lcom/google/android/mms/pdu/PduComposer$LengthRecordNode;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    nop

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 125
    sget-object v1, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pdu"    # Lcom/google/android/mms/pdu/GenericPdu;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 93
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 98
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 103
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 113
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 136
    iput-object p2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    .line 138
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 139
    new-instance v2, Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v2, p0, v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$1;)V

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 141
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/mms/pdu/PduComposer;

    .line 32
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 4
    .param p1, "address"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 457
    const/4 v0, 0x0

    move-object v1, v0

    .line 460
    .local v1, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v2

    .line 461
    .local v2, "addressType":I
    invoke-static {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->copy(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    move-object v1, v3

    .line 462
    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 464
    const-string v3, "/TYPE=PLMN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 465
    :cond_0
    const/4 v3, 0x3

    if-ne v3, v2, :cond_1

    .line 467
    const-string v3, "/TYPE=IPV4"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    .line 468
    :cond_1
    const/4 v3, 0x4

    if-ne v3, v2, :cond_2

    .line 470
    const-string v3, "/TYPE=IPV6"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v2    # "addressType":I
    :cond_2
    :goto_0
    nop

    .line 476
    return-object v1

    .line 472
    :catch_0
    move-exception v2

    .line 473
    .local v2, "e":Ljava/lang/NullPointerException;
    return-object v0
.end method

.method private appendHeader(I)I
    .locals 9
    .param p1, "field"    # I

    .line 483
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    const/16 v3, 0x80

    const/16 v4, 0x81

    const/4 v5, 0x1

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    .line 645
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 590
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    .line 591
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 592
    .local v1, "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v1, :cond_0

    .line 593
    return v6

    .line 596
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 597
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 598
    goto/16 :goto_2

    .line 485
    .end local v1    # "enString":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 487
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 488
    .local v1, "version":I
    if-nez v1, :cond_1

    .line 489
    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_2

    .line 491
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 494
    goto/16 :goto_2

    .line 498
    .end local v1    # "version":I
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 499
    .local v1, "textString":[B
    if-nez v1, :cond_2

    .line 500
    return v6

    .line 503
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 504
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 505
    goto/16 :goto_2

    .line 601
    .end local v1    # "textString":[B
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 602
    .local v1, "messageClass":[B
    if-nez v1, :cond_3

    .line 603
    return v6

    .line 606
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 607
    const-string v2, "advertisement"

    .line 608
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 607
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_2

    .line 610
    :cond_4
    const-string v2, "auto"

    .line 611
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 610
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 612
    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_2

    .line 613
    :cond_5
    const-string v2, "personal"

    .line 614
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 613
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 615
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_2

    .line 616
    :cond_6
    const-string v2, "informational"

    .line 617
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 616
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 618
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_2

    .line 620
    :cond_7
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 622
    goto/16 :goto_2

    .line 530
    .end local v1    # "messageClass":[B
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 532
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 533
    .local v1, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_a

    .line 534
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/String;

    .line 535
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>([B)V

    const-string v6, "insert-address-token"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_0

    .line 542
    :cond_8
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 543
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 546
    .local v2, "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 548
    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 549
    .local v3, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_9

    .line 550
    return v5

    .line 553
    :cond_9
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 555
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v4

    .line 556
    .local v4, "flen":I
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 557
    int-to-long v5, v4

    invoke-virtual {p0, v5, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 558
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 560
    .end local v2    # "fstart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v4    # "flen":I
    goto/16 :goto_2

    .line 538
    .end local v3    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_a
    :goto_0
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 540
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    goto/16 :goto_2

    .line 625
    .end local v1    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 626
    .local v7, "expiry":J
    cmp-long v1, v1, v7

    if-nez v1, :cond_b

    .line 627
    return v6

    .line 630
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 632
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 633
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v1

    .line 635
    .local v1, "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 636
    invoke-virtual {p0, v7, v8}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 638
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v2

    .line 639
    .local v2, "expiryLength":I
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 640
    int-to-long v3, v2

    invoke-virtual {p0, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 641
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 642
    goto :goto_2

    .line 569
    .end local v1    # "expiryStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v2    # "expiryLength":I
    .end local v7    # "expiry":J
    :pswitch_7
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 570
    .local v1, "octet":I
    if-nez v1, :cond_c

    .line 571
    return v6

    .line 574
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 575
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 576
    goto :goto_2

    .line 579
    .end local v1    # "octet":I
    :pswitch_8
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 580
    .local v3, "date":J
    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 581
    return v6

    .line 584
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 585
    invoke-virtual {p0, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendDateValue(J)V

    .line 586
    goto :goto_2

    .line 510
    .end local v3    # "date":J
    :pswitch_9
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 512
    .local v1, "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v1, :cond_e

    .line 513
    return v6

    .line 517
    :cond_e
    move v2, v0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_10

    .line 518
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google/android/mms/pdu/EncodedStringValue;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 519
    .local v3, "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_f

    .line 520
    return v5

    .line 523
    :cond_f
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 524
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 526
    .end local v2    # "i":I
    .end local v3    # "temp":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_10
    nop

    .line 648
    .end local v1    # "addr":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .line 1181
    const/4 v0, 0x5

    if-nez p0, :cond_0

    .line 1182
    return v0

    .line 1185
    :cond_0
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    const/4 v0, 0x3

    return v0

    .line 1188
    :cond_1
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1190
    const/4 v0, 0x1

    return v0

    .line 1191
    :cond_2
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1193
    const/4 v0, 0x2

    return v0

    .line 1194
    :cond_3
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1196
    const/4 v0, 0x4

    return v0

    .line 1199
    :cond_4
    return v0
.end method

.method private makeAckInd()I
    .locals 3

    .line 735
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 737
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 741
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 742
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 745
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 746
    return v2

    .line 750
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 751
    return v2

    .line 755
    :cond_2
    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 757
    return v1
.end method

.method private makeMessageBody(I)I
    .locals 31
    .param p1, "type"    # I

    move-object/from16 v1, p0

    .line 857
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 859
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 862
    .local v2, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    new-instance v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v4, 0x84

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    move-object v3, v0

    .line 863
    .local v3, "contentType":Ljava/lang/String;
    sget-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 864
    .local v5, "contentTypeIdentifier":Ljava/lang/Integer;
    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 866
    return v6

    .line 869
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 873
    move/from16 v7, p1

    if-ne v7, v4, :cond_1

    .line 874
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .local v0, "body":Lcom/google/android/mms/pdu/PduBody;
    goto :goto_0

    .line 876
    .end local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/SendReq;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .restart local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    :goto_0
    move-object v4, v0

    .line 878
    .end local v0    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v8, 0x0

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v0

    if-nez v0, :cond_2

    .line 880
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v5

    goto/16 :goto_16

    .line 888
    :cond_2
    const/16 v9, 0x3e

    const/16 v10, 0x3c

    :try_start_0
    invoke-virtual {v4, v8}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    .line 890
    .local v0, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v11

    .line 891
    .local v11, "start":[B
    if-eqz v11, :cond_4

    .line 892
    const/16 v12, 0x8a

    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 893
    aget-byte v12, v11, v8

    if-ne v10, v12, :cond_3

    array-length v12, v11

    sub-int/2addr v12, v6

    aget-byte v12, v11, v12

    if-ne v9, v12, :cond_3

    .line 894
    invoke-virtual {v1, v11}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_1

    .line 896
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ">"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V

    .line 901
    :cond_4
    :goto_1
    const/16 v12, 0x89

    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 902
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    .end local v11    # "start":[B
    goto :goto_2

    .line 904
    .end local v0    # "part":Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 908
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v11

    .line 909
    .local v11, "ctLength":I
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 910
    int-to-long v12, v11

    invoke-virtual {v1, v12, v13}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 911
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 914
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v12

    .line 915
    .local v12, "partNum":I
    int-to-long v13, v12

    invoke-virtual {v1, v13, v14}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 916
    move v0, v8

    .local v0, "i":I
    :goto_3
    move v13, v0

    .end local v0    # "i":I
    .local v13, "i":I
    if-ge v13, v12, :cond_15

    .line 917
    invoke-virtual {v4, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v14

    .line 918
    .local v14, "part":Lcom/google/android/mms/pdu/PduPart;
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 919
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v15

    .line 921
    .local v15, "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 922
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v9

    .line 924
    .local v9, "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v10

    .line 926
    .local v10, "partContentType":[B
    if-nez v10, :cond_5

    .line 928
    return v6

    .line 932
    :cond_5
    sget-object v0, Lcom/google/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 933
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Integer;

    .line 934
    .local v8, "partContentTypeIdentifier":Ljava/lang/Integer;
    if-nez v8, :cond_6

    .line 935
    invoke-virtual {v1, v10}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_4

    .line 937
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 944
    :goto_4
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    .line 946
    .local v0, "name":[B
    if-nez v0, :cond_7

    .line 947
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    .line 949
    if-nez v0, :cond_7

    .line 950
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    .line 952
    if-nez v0, :cond_7

    .line 956
    return v6

    .line 960
    :cond_7
    move-object v6, v0

    .end local v0    # "name":[B
    .local v6, "name":[B
    const/16 v0, 0x85

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 961
    invoke-virtual {v1, v6}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 964
    move-object/from16 v18, v2

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 965
    .local v2, "charset":I
    .local v18, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    if-eqz v2, :cond_8

    .line 966
    const/16 v0, 0x81

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 967
    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 970
    :cond_8
    move/from16 v19, v2

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v2

    .line 971
    .local v2, "contentTypeLength":I
    .local v19, "charset":I
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 972
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    int-to-long v3, v2

    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "body":Lcom/google/android/mms/pdu/PduBody;
    .local v20, "contentType":Ljava/lang/String;
    .local v21, "body":Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 973
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 976
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    .line 978
    .local v3, "contentId":[B
    if-eqz v3, :cond_b

    .line 979
    const/16 v0, 0xc0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 980
    const/4 v4, 0x0

    aget-byte v0, v3, v4

    const/16 v4, 0x3c

    if-ne v4, v0, :cond_9

    array-length v0, v3

    const/16 v17, 0x1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    const/16 v4, 0x3e

    if-ne v4, v0, :cond_a

    .line 981
    invoke-virtual {v1, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    goto :goto_5

    .line 983
    :cond_9
    const/16 v4, 0x3e

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    .line 988
    :cond_b
    :goto_5
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    .line 989
    .local v4, "contentLocation":[B
    if-eqz v4, :cond_c

    .line 990
    const/16 v0, 0x8e

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 991
    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 995
    :cond_c
    move/from16 v22, v2

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v2

    .line 997
    .local v2, "headerLength":I
    .local v22, "contentTypeLength":I
    const/16 v16, 0x0

    .line 998
    .local v16, "dataLength":I
    move-object/from16 v23, v3

    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v3

    .line 1000
    .local v3, "partData":[B
    .local v23, "contentId":[B
    if-eqz v3, :cond_d

    .line 1001
    array-length v0, v3

    move-object/from16 v24, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 1002
    .end local v4    # "contentLocation":[B
    .local v24, "contentLocation":[B
    array-length v0, v3

    .line 1030
    .end local v16    # "dataLength":I
    .local v0, "dataLength":I
    move-object/from16 v25, v3

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto/16 :goto_9

    .line 1004
    .end local v0    # "dataLength":I
    .end local v24    # "contentLocation":[B
    .restart local v4    # "contentLocation":[B
    .restart local v16    # "dataLength":I
    :cond_d
    move-object/from16 v24, v4

    .end local v4    # "contentLocation":[B
    .restart local v24    # "contentLocation":[B
    const/4 v0, 0x0

    move-object v4, v0

    .line 1006
    .local v4, "cr":Ljava/io/InputStream;
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 1007
    .local v0, "buffer":[B
    move-object/from16 v25, v3

    :try_start_2
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .end local v3    # "partData":[B
    .local v25, "partData":[B
    move-object/from16 v26, v4

    :try_start_3
    invoke-virtual {v14}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    .end local v4    # "cr":Ljava/io/InputStream;
    .local v26, "cr":Ljava/io/InputStream;
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v3

    .line 1008
    .end local v26    # "cr":Ljava/io/InputStream;
    .restart local v4    # "cr":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 1009
    .local v3, "len":I
    :goto_6
    move/from16 v27, v3

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v3    # "len":I
    .local v27, "len":I
    move/from16 v28, v3

    .end local v27    # "len":I
    .local v28, "len":I
    move-object/from16 v29, v5

    const/4 v5, -0x1

    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .local v29, "contentTypeIdentifier":Ljava/lang/Integer;
    if-eq v3, v5, :cond_e

    .line 1010
    :try_start_5
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v30, v6

    move/from16 v5, v28

    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v3, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1011
    .end local v6    # "name":[B
    .end local v28    # "len":I
    .local v5, "len":I
    .local v30, "name":[B
    iget v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v3, v5

    iput v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1012
    add-int v16, v16, v5

    .line 1008
    move v3, v5

    move-object/from16 v5, v29

    move-object/from16 v6, v30

    goto :goto_6

    .line 1021
    .end local v0    # "buffer":[B
    .end local v5    # "len":I
    :catchall_0
    move-exception v0

    move-object v3, v0

    goto/16 :goto_e

    .line 1018
    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 1016
    :catch_2
    move-exception v0

    goto/16 :goto_12

    .line 1014
    :catch_3
    move-exception v0

    goto/16 :goto_14

    .line 1021
    .end local v30    # "name":[B
    .restart local v6    # "name":[B
    :catchall_1
    move-exception v0

    move-object/from16 v30, v6

    move-object v3, v0

    .end local v6    # "name":[B
    .restart local v30    # "name":[B
    goto/16 :goto_e

    .line 1018
    .end local v30    # "name":[B
    .restart local v6    # "name":[B
    :catch_4
    move-exception v0

    move-object/from16 v30, v6

    .end local v6    # "name":[B
    .restart local v30    # "name":[B
    goto/16 :goto_10

    .line 1016
    .end local v30    # "name":[B
    .restart local v6    # "name":[B
    :catch_5
    move-exception v0

    move-object/from16 v30, v6

    .end local v6    # "name":[B
    .restart local v30    # "name":[B
    goto/16 :goto_12

    .line 1014
    .end local v30    # "name":[B
    .restart local v6    # "name":[B
    :catch_6
    move-exception v0

    move-object/from16 v30, v6

    .end local v6    # "name":[B
    .restart local v30    # "name":[B
    goto/16 :goto_14

    .line 1021
    .end local v30    # "name":[B
    .restart local v6    # "name":[B
    :cond_e
    move-object/from16 v30, v6

    .end local v6    # "name":[B
    .restart local v30    # "name":[B
    if-eqz v4, :cond_f

    .line 1023
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1025
    .end local v4    # "cr":Ljava/io/InputStream;
    :goto_7
    goto :goto_8

    .line 1024
    .restart local v4    # "cr":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    goto :goto_7

    .line 1030
    .end local v4    # "cr":Ljava/io/InputStream;
    :cond_f
    :goto_8
    move/from16 v0, v16

    .end local v16    # "dataLength":I
    .local v0, "dataLength":I
    :goto_9
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_10

    .line 1034
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 1035
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1036
    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 1037
    iget-object v3, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 916
    .end local v0    # "dataLength":I
    .end local v2    # "headerLength":I
    .end local v8    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v9    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v10    # "partContentType":[B
    .end local v15    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v19    # "charset":I
    .end local v22    # "contentTypeLength":I
    .end local v23    # "contentId":[B
    .end local v24    # "contentLocation":[B
    .end local v25    # "partData":[B
    .end local v30    # "name":[B
    add-int/lit8 v0, v13, 0x1

    .end local v13    # "i":I
    .local v0, "i":I
    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v29

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/16 v10, 0x3c

    goto/16 :goto_3

    .line 1031
    .local v0, "dataLength":I
    .restart local v2    # "headerLength":I
    .restart local v8    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .restart local v9    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v10    # "partContentType":[B
    .restart local v13    # "i":I
    .restart local v15    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v19    # "charset":I
    .restart local v22    # "contentTypeLength":I
    .restart local v23    # "contentId":[B
    .restart local v24    # "contentLocation":[B
    .restart local v25    # "partData":[B
    .restart local v30    # "name":[B
    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "BUG: Length sanity check failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1021
    .end local v0    # "dataLength":I
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v4    # "cr":Ljava/io/InputStream;
    .local v5, "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    .restart local v16    # "dataLength":I
    :catchall_2
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v3, v0

    goto :goto_a

    .line 1018
    :catch_8
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_b

    .line 1016
    :catch_9
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_c

    .line 1014
    :catch_a
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    goto :goto_d

    .line 1021
    .end local v4    # "cr":Ljava/io/InputStream;
    .restart local v26    # "cr":Ljava/io/InputStream;
    :catchall_3
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v3, v0

    move-object/from16 v4, v26

    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .end local v26    # "cr":Ljava/io/InputStream;
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_a
    goto :goto_e

    .line 1018
    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v4, v26

    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .end local v26    # "cr":Ljava/io/InputStream;
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_b
    goto :goto_10

    .line 1016
    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    :catch_c
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v4, v26

    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .end local v26    # "cr":Ljava/io/InputStream;
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_c
    goto/16 :goto_12

    .line 1014
    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    :catch_d
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v4, v26

    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .end local v26    # "cr":Ljava/io/InputStream;
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_d
    goto/16 :goto_14

    .line 1021
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catchall_4
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v3, v0

    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    goto :goto_e

    .line 1018
    .end local v26    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_e
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    goto :goto_10

    .line 1016
    .end local v26    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_f
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    goto :goto_12

    .line 1014
    .end local v26    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_10
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v4    # "cr":Ljava/io/InputStream;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v26    # "cr":Ljava/io/InputStream;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    goto :goto_14

    .line 1021
    .end local v25    # "partData":[B
    .end local v26    # "cr":Ljava/io/InputStream;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .local v3, "partData":[B
    .restart local v4    # "cr":Ljava/io/InputStream;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catchall_5
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    move-object v3, v0

    .end local v3    # "partData":[B
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v25    # "partData":[B
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_e
    if-eqz v4, :cond_11

    .line 1023
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_11

    .line 1025
    goto :goto_f

    .line 1024
    :catch_11
    move-exception v0

    .line 1025
    :cond_11
    :goto_f
    throw v3

    .line 1018
    .end local v25    # "partData":[B
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .restart local v3    # "partData":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_12
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v3    # "partData":[B
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v25    # "partData":[B
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_10
    move-object v3, v0

    .line 1019
    .local v3, "e":Ljava/lang/RuntimeException;
    nop

    .line 1021
    if-eqz v4, :cond_12

    .line 1023
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13

    .line 1025
    goto :goto_11

    .line 1024
    :catch_13
    move-exception v0

    .line 1019
    :cond_12
    :goto_11
    const/4 v5, 0x1

    return v5

    .line 1016
    .end local v25    # "partData":[B
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .local v3, "partData":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_14
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v3    # "partData":[B
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v25    # "partData":[B
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_12
    move-object v3, v0

    .line 1017
    .local v3, "e":Ljava/io/IOException;
    nop

    .line 1021
    if-eqz v4, :cond_13

    .line 1023
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_15

    .line 1025
    goto :goto_13

    .line 1024
    :catch_15
    move-exception v0

    .line 1017
    :cond_13
    :goto_13
    const/4 v5, 0x1

    return v5

    .line 1014
    .end local v25    # "partData":[B
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .local v3, "partData":[B
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v6    # "name":[B
    :catch_16
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move-object/from16 v30, v6

    .end local v3    # "partData":[B
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v6    # "name":[B
    .restart local v25    # "partData":[B
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v30    # "name":[B
    :goto_14
    move-object v3, v0

    .line 1015
    .local v3, "e":Ljava/io/FileNotFoundException;
    nop

    .line 1021
    if-eqz v4, :cond_14

    .line 1023
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_17

    .line 1025
    goto :goto_15

    .line 1024
    :catch_17
    move-exception v0

    .line 1015
    :cond_14
    :goto_15
    const/4 v5, 0x1

    return v5

    .line 1040
    .end local v8    # "partContentTypeIdentifier":Ljava/lang/Integer;
    .end local v9    # "contentTypeBegin":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v10    # "partContentType":[B
    .end local v13    # "i":I
    .end local v14    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v15    # "attachment":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v16    # "dataLength":I
    .end local v18    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v19    # "charset":I
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v21    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v22    # "contentTypeLength":I
    .end local v23    # "contentId":[B
    .end local v24    # "contentLocation":[B
    .end local v25    # "partData":[B
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .end local v30    # "name":[B
    .local v2, "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .local v3, "contentType":Ljava/lang/String;
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    :cond_15
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v5

    .end local v2    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v18    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v20    # "contentType":Ljava/lang/String;
    .restart local v21    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    const/4 v2, 0x0

    return v2

    .line 880
    .end local v11    # "ctLength":I
    .end local v12    # "partNum":I
    .end local v18    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v21    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v2    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v3    # "contentType":Ljava/lang/String;
    .restart local v4    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    :cond_16
    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v29, v5

    .end local v2    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "body":Lcom/google/android/mms/pdu/PduBody;
    .end local v5    # "contentTypeIdentifier":Ljava/lang/Integer;
    .restart local v18    # "ctStart":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    .restart local v20    # "contentType":Ljava/lang/String;
    .restart local v21    # "body":Lcom/google/android/mms/pdu/PduBody;
    .restart local v29    # "contentTypeIdentifier":Ljava/lang/Integer;
    :goto_16
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 881
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 882
    iget-object v0, v1, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 883
    const/4 v2, 0x0

    return v2
.end method

.method private makeNotifyResp()I
    .locals 3

    .line 703
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 705
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 709
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 710
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 713
    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 714
    return v2

    .line 718
    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    return v2

    .line 723
    :cond_2
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 724
    return v2

    .line 728
    :cond_3
    return v1
.end method

.method private makeReadRecInd()I
    .locals 3

    .line 655
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 657
    iput v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 661
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 662
    const/16 v0, 0x87

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 665
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 666
    return v2

    .line 670
    :cond_1
    const/16 v0, 0x8b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 671
    return v2

    .line 675
    :cond_2
    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    return v2

    .line 680
    :cond_3
    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 681
    return v2

    .line 685
    :cond_4
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 688
    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 689
    return v2

    .line 696
    :cond_5
    return v1
.end method

.method private makeSendRetrievePdu(I)I
    .locals 4
    .param p1, "type"    # I

    .line 764
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 770
    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 771
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 774
    const/16 v0, 0x98

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 776
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    .line 777
    .local v0, "trid":[B
    if-eqz v0, :cond_8

    .line 781
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 784
    const/16 v1, 0x8d

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 785
    return v2

    .line 789
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 792
    const/16 v1, 0x89

    invoke-direct {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 793
    return v2

    .line 796
    :cond_2
    const/4 v1, 0x0

    .line 799
    .local v1, "recipient":Z
    const/16 v3, 0x97

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 800
    const/4 v1, 0x1

    .line 804
    :cond_3
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 805
    const/4 v1, 0x1

    .line 809
    :cond_4
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 810
    const/4 v1, 0x1

    .line 814
    :cond_5
    if-nez v1, :cond_6

    .line 815
    return v2

    .line 819
    :cond_6
    const/16 v2, 0x96

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 823
    const/16 v2, 0x8a

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 826
    const/16 v2, 0x88

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 829
    const/16 v2, 0x8f

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 832
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 835
    const/16 v2, 0x90

    invoke-direct {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 837
    const/16 v2, 0x84

    if-ne p1, v2, :cond_7

    .line 839
    const/16 v3, 0x99

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 841
    const/16 v3, 0x9a

    invoke-direct {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->appendHeader(I)I

    .line 846
    :cond_7
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->appendOctet(I)V

    .line 849
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move-result v2

    return v2

    .line 779
    .end local v1    # "recipient":Z
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Transaction-ID is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected append(I)V
    .locals 1
    .param p1, "value"    # I

    .line 197
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 198
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 199
    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0
    .param p1, "date"    # J

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    .line 399
    return-void
.end method

.method protected appendEncodedString(Lcom/google/android/mms/pdu/EncodedStringValue;)V
    .locals 6
    .param p1, "enStr"    # Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 326
    nop

    .line 328
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    .line 329
    .local v0, "charset":I
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    .line 330
    .local v1, "textString":[B
    if-nez v1, :cond_0

    .line 331
    return-void

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    .line 340
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    .line 342
    .local v2, "start":Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    .line 343
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 345
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v3

    .line 346
    .local v3, "len":I
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->pop()V

    .line 347
    int-to-long v4, v3

    invoke-virtual {p0, v4, v5}, Lcom/google/android/mms/pdu/PduComposer;->appendValueLength(J)V

    .line 348
    iget-object v4, p0, Lcom/google/android/mms/pdu/PduComposer;->mStack:Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->copy()V

    .line 349
    return-void
.end method

.method protected appendLongInteger(J)V
    .locals 9
    .param p1, "longInt"    # J

    .line 259
    move-wide v0, p1

    .line 262
    .local v0, "temp":J
    const/4 v2, 0x0

    move-wide v3, v0

    move v0, v2

    .local v0, "size":I
    .local v3, "temp":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/16 v5, 0x8

    if-eqz v1, :cond_0

    if-ge v0, v5, :cond_0

    .line 263
    ushr-long/2addr v3, v5

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 271
    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, v5

    .line 273
    .local v1, "shift":I
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 274
    ushr-long v5, p1, v1

    const-wide/16 v7, 0xff

    and-long/2addr v5, v7

    long-to-int v5, v5

    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 275
    add-int/lit8 v1, v1, -0x8

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 277
    :cond_1
    return-void
.end method

.method protected appendOctet(I)V
    .locals 0
    .param p1, "number"    # I

    .line 227
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 228
    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    .line 454
    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2
    .param p1, "text"    # [B

    .line 436
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 437
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 438
    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 439
    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1
    .param p1, "value"    # I

    .line 216
    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 217
    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0
    .param p1, "value"    # I

    .line 240
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 241
    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendTextString([B)V

    .line 314
    return-void
.end method

.method protected appendTextString([B)V
    .locals 3
    .param p1, "text"    # [B

    .line 292
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x7f

    if-le v1, v2, :cond_0

    .line 293
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 296
    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/mms/pdu/PduComposer;->arraycopy([BII)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 298
    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 12
    .param p1, "value"    # J

    .line 366
    const-wide/16 v0, 0x7f

    .line 368
    .local v0, "max":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x5

    const-wide/16 v4, 0x7f

    if-ge v2, v3, :cond_1

    .line 369
    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    .line 370
    goto :goto_1

    .line 373
    :cond_0
    const/4 v3, 0x7

    shl-long v6, v0, v3

    or-long v0, v6, v4

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    :goto_1
    if-lez v2, :cond_2

    .line 377
    mul-int/lit8 v3, v2, 0x7

    ushr-long v6, p1, v3

    .line 378
    .local v6, "temp":J
    and-long/2addr v6, v4

    .line 380
    const-wide/16 v8, 0x80

    or-long/2addr v8, v6

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v3, v8

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 382
    add-int/lit8 v2, v2, -0x1

    .line 383
    .end local v6    # "temp":J
    goto :goto_1

    .line 385
    :cond_2
    and-long v3, p1, v4

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 386
    return-void
.end method

.method protected appendValueLength(J)V
    .locals 2
    .param p1, "value"    # J

    .line 415
    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 416
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->appendShortLength(I)V

    .line 417
    return-void

    .line 420
    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->append(I)V

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/google/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    .line 422
    return-void
.end method

.method protected arraycopy([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "pos"    # I
    .param p3, "length"    # I

    .line 189
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 190
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    .line 191
    return-void
.end method

.method public make()[B
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 156
    .local v0, "type":I
    const/16 v1, 0x80

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x87

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 179
    return-object v2

    .line 169
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    return-object v2

    .line 164
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    return-object v2

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    return-object v2

    .line 159
    :cond_1
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/PduComposer;->makeSendRetrievePdu(I)I

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    return-object v2

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
