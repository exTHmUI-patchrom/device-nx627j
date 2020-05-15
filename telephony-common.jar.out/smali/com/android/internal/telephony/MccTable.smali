.class public final Lcom/android/internal/telephony/MccTable;
.super Ljava/lang/Object;
.source "MccTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MccTable$MccEntry;
    }
.end annotation


# static fields
.field private static final FALLBACKS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field static final LOG_TAG:Ljava/lang/String; = "MccTable"

.field static sTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/MccTable$MccEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 234
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    .line 238
    sget-object v0, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    .line 462
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "gr"

    const/4 v4, 0x2

    const/16 v5, 0xca

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "nl"

    const/16 v5, 0xcc

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "be"

    const/16 v5, 0xce

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "fr"

    const/16 v5, 0xd0

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "mc"

    const/16 v5, 0xd4

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "ad"

    const/16 v5, 0xd5

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "es"

    const/16 v5, 0xd6

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "hu"

    const/16 v5, 0xd8

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "ba"

    const/16 v5, 0xda

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "hr"

    const/16 v5, 0xdb

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "rs"

    const/16 v5, 0xdc

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "it"

    const/16 v5, 0xde

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "va"

    const/16 v5, 0xe1

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "ro"

    const/16 v5, 0xe2

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "ch"

    const/16 v5, 0xe4

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "cz"

    const/16 v5, 0xe6

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "sk"

    const/16 v5, 0xe7

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "at"

    const/16 v5, 0xe8

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "gb"

    const/16 v5, 0xea

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "gb"

    const/16 v5, 0xeb

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "dk"

    const/16 v5, 0xee

    invoke-direct {v2, v5, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v3, "se"

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "no"

    const/16 v3, 0xf2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fi"

    const/16 v3, 0xf4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lt"

    const/16 v3, 0xf6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lv"

    const/16 v3, 0xf7

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ee"

    const/16 v3, 0xf8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ru"

    const/16 v3, 0xfa

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ua"

    const/16 v3, 0xff

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "by"

    const/16 v3, 0x101

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "md"

    const/16 v3, 0x103

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pl"

    const/16 v3, 0x104

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "de"

    const/16 v3, 0x106

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gi"

    const/16 v3, 0x10a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pt"

    const/16 v3, 0x10c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lu"

    const/16 v3, 0x10e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ie"

    const/16 v3, 0x110

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "is"

    const/16 v3, 0x112

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "al"

    const/16 v3, 0x114

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mt"

    const/16 v3, 0x116

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cy"

    const/16 v3, 0x118

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x11a

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "am"

    const/16 v3, 0x11b

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bg"

    const/16 v3, 0x11c

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tr"

    const/16 v3, 0x11e

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fo"

    const/16 v3, 0x120

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ge"

    const/16 v3, 0x121

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gl"

    const/16 v3, 0x122

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sm"

    const/16 v3, 0x124

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "si"

    const/16 v3, 0x125

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mk"

    const/16 v3, 0x126

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "li"

    const/16 v3, 0x127

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "me"

    const/16 v3, 0x129

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ca"

    const/4 v3, 0x3

    const/16 v5, 0x12e

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pm"

    const/16 v5, 0x134

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x136

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x137

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x138

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x139

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13a

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13b

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "us"

    const/16 v5, 0x13c

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pr"

    const/16 v5, 0x14a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vi"

    const/16 v5, 0x14c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mx"

    const/16 v5, 0x14e

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jm"

    const/16 v5, 0x152

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gp"

    const/16 v5, 0x154

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bb"

    const/16 v5, 0x156

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ag"

    const/16 v5, 0x158

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ky"

    const/16 v5, 0x15a

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vg"

    const/16 v5, 0x15c

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bm"

    const/16 v5, 0x15e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gd"

    const/16 v5, 0x160

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ms"

    const/16 v5, 0x162

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kn"

    const/16 v5, 0x164

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lc"

    const/16 v5, 0x166

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vc"

    const/16 v5, 0x168

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v5, 0x16a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "aw"

    const/16 v5, 0x16b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bs"

    const/16 v5, 0x16c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ai"

    const/16 v5, 0x16d

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dm"

    const/16 v5, 0x16e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cu"

    const/16 v5, 0x170

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "do"

    const/16 v5, 0x172

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ht"

    const/16 v5, 0x174

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tt"

    const/16 v5, 0x176

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tc"

    const/16 v5, 0x178

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "az"

    const/16 v5, 0x190

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kz"

    const/16 v5, 0x191

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bt"

    const/16 v5, 0x192

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x194

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x195

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "in"

    const/16 v5, 0x196

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pk"

    const/16 v5, 0x19a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "af"

    const/16 v5, 0x19c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lk"

    const/16 v5, 0x19d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mm"

    const/16 v5, 0x19e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lb"

    const/16 v5, 0x19f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jo"

    const/16 v5, 0x1a0

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sy"

    const/16 v5, 0x1a1

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "iq"

    const/16 v5, 0x1a2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kw"

    const/16 v5, 0x1a3

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sa"

    const/16 v5, 0x1a4

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ye"

    const/16 v5, 0x1a5

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "om"

    const/16 v5, 0x1a6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ps"

    const/16 v5, 0x1a7

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1a8

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "il"

    const/16 v5, 0x1a9

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bh"

    const/16 v5, 0x1aa

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "qa"

    const/16 v5, 0x1ab

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mn"

    const/16 v5, 0x1ac

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "np"

    const/16 v5, 0x1ad

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1ae

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ae"

    const/16 v5, 0x1af

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ir"

    const/16 v5, 0x1b0

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "uz"

    const/16 v5, 0x1b2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tj"

    const/16 v5, 0x1b4

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kg"

    const/16 v5, 0x1b5

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tm"

    const/16 v5, 0x1b6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v5, 0x1b8

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "jp"

    const/16 v5, 0x1b9

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kr"

    const/16 v5, 0x1c2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vn"

    const/16 v5, 0x1c4

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hk"

    const/16 v5, 0x1c6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mo"

    const/16 v5, 0x1c7

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kh"

    const/16 v5, 0x1c8

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "la"

    const/16 v5, 0x1c9

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v5, 0x1cc

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cn"

    const/16 v5, 0x1cd

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tw"

    const/16 v5, 0x1d2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "kp"

    const/16 v5, 0x1d3

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bd"

    const/16 v5, 0x1d6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mv"

    const/16 v5, 0x1d8

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "my"

    const/16 v5, 0x1f6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "au"

    const/16 v5, 0x1f9

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "id"

    const/16 v5, 0x1fe

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tl"

    const/16 v5, 0x202

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ph"

    const/16 v5, 0x203

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "th"

    const/16 v5, 0x208

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sg"

    const/16 v5, 0x20d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bn"

    const/16 v5, 0x210

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nz"

    const/16 v5, 0x212

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mp"

    const/16 v5, 0x216

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gu"

    const/16 v5, 0x217

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nr"

    const/16 v5, 0x218

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pg"

    const/16 v5, 0x219

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "to"

    const/16 v5, 0x21b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sb"

    const/16 v5, 0x21c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 610
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "vu"

    const/16 v5, 0x21d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fj"

    const/16 v5, 0x21e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "wf"

    const/16 v5, 0x21f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "as"

    const/16 v5, 0x220

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ki"

    const/16 v5, 0x221

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nc"

    const/16 v5, 0x222

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pf"

    const/16 v5, 0x223

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ck"

    const/16 v5, 0x224

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ws"

    const/16 v5, 0x225

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fm"

    const/16 v5, 0x226

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mh"

    const/16 v5, 0x227

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pw"

    const/16 v5, 0x228

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tv"

    const/16 v5, 0x229

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "nu"

    const/16 v5, 0x22b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "eg"

    const/16 v5, 0x25a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dz"

    const/16 v5, 0x25b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ma"

    const/16 v5, 0x25c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tn"

    const/16 v5, 0x25d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ly"

    const/16 v5, 0x25e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gm"

    const/16 v5, 0x25f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sn"

    const/16 v5, 0x260

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mr"

    const/16 v5, 0x261

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ml"

    const/16 v5, 0x262

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gn"

    const/16 v5, 0x263

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ci"

    const/16 v5, 0x264

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bf"

    const/16 v5, 0x265

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ne"

    const/16 v5, 0x266

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tg"

    const/16 v5, 0x267

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bj"

    const/16 v5, 0x268

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mu"

    const/16 v5, 0x269

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "lr"

    const/16 v5, 0x26a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sl"

    const/16 v5, 0x26b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gh"

    const/16 v5, 0x26c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ng"

    const/16 v5, 0x26d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "td"

    const/16 v5, 0x26e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cf"

    const/16 v5, 0x26f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cm"

    const/16 v5, 0x270

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cv"

    const/16 v5, 0x271

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "st"

    const/16 v5, 0x272

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gq"

    const/16 v5, 0x273

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ga"

    const/16 v5, 0x274

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cg"

    const/16 v5, 0x275

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cd"

    const/16 v5, 0x276

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ao"

    const/16 v5, 0x277

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gw"

    const/16 v5, 0x278

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sc"

    const/16 v5, 0x279

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sd"

    const/16 v5, 0x27a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "rw"

    const/16 v5, 0x27b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "et"

    const/16 v5, 0x27c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "so"

    const/16 v5, 0x27d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "dj"

    const/16 v5, 0x27e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ke"

    const/16 v5, 0x27f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "tz"

    const/16 v5, 0x280

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ug"

    const/16 v5, 0x281

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 664
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bi"

    const/16 v5, 0x282

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mz"

    const/16 v5, 0x283

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "zm"

    const/16 v5, 0x285

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mg"

    const/16 v5, 0x286

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "re"

    const/16 v5, 0x287

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "zw"

    const/16 v5, 0x288

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "na"

    const/16 v5, 0x289

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "mw"

    const/16 v5, 0x28a

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ls"

    const/16 v5, 0x28b

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bw"

    const/16 v5, 0x28c

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sz"

    const/16 v5, 0x28d

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "km"

    const/16 v5, 0x28e

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "za"

    const/16 v5, 0x28f

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "er"

    const/16 v5, 0x291

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sh"

    const/16 v5, 0x292

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ss"

    const/16 v5, 0x293

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bz"

    const/16 v5, 0x2be

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gt"

    const/16 v5, 0x2c0

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sv"

    const/16 v5, 0x2c2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "hn"

    const/16 v5, 0x2c4

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ni"

    const/16 v5, 0x2c6

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cr"

    const/16 v5, 0x2c8

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pa"

    const/16 v5, 0x2ca

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "pe"

    const/16 v5, 0x2cc

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ar"

    const/16 v5, 0x2d2

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "br"

    const/16 v5, 0x2d4

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "cl"

    const/16 v5, 0x2da

    invoke-direct {v1, v5, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "co"

    const/16 v5, 0x2dc

    invoke-direct {v1, v5, v2, v3}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ve"

    const/16 v3, 0x2de

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "bo"

    const/16 v3, 0x2e0

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gy"

    const/16 v3, 0x2e2

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "ec"

    const/16 v3, 0x2e4

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "gf"

    const/16 v3, 0x2e6

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "py"

    const/16 v3, 0x2e8

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "sr"

    const/16 v3, 0x2ea

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "uy"

    const/16 v3, 0x2ec

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v2, "fk"

    const/16 v3, 0x2ee

    invoke-direct {v1, v3, v2, v4}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    sget-object v0, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 704
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countryCodeForMcc(I)Ljava/lang/String;
    .locals 2
    .param p0, "mcc"    # I

    .line 107
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 109
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 110
    const-string v1, ""

    return-object v1

    .line 112
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    return-object v1
.end method

.method public static defaultLanguageForMcc(I)Ljava/lang/String;
    .locals 7
    .param p0, "mcc"    # I

    .line 122
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 123
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 124
    const-string v1, "MccTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultLanguageForMcc("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): no country for mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    return-object v1

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 131
    .local v1, "country":Ljava/lang/String;
    const-string v2, "in"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    const-string v2, "en"

    return-object v2

    .line 136
    :cond_1
    new-instance v2, Ljava/util/Locale;

    const-string v3, "und"

    invoke-direct {v2, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v2

    .line 137
    .local v2, "likelyLocale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "likelyLanguage":Ljava/lang/String;
    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultLanguageForMcc("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uses "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-object v3
.end method

.method public static defaultTimeZoneForMcc(I)Ljava/lang/String;
    .locals 3
    .param p0, "mcc"    # I

    .line 93
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 94
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 95
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mIso:Ljava/lang/String;

    .line 98
    .local v1, "lowerCaseCountryCode":Ljava/lang/String;
    invoke-static {}, Llibcore/util/TimeZoneFinder;->getInstance()Llibcore/util/TimeZoneFinder;

    move-result-object v2

    invoke-virtual {v2, v1}, Llibcore/util/TimeZoneFinder;->lookupDefaultTimeZoneIdByCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;
    .locals 3
    .param p0, "mcc"    # I

    .line 76
    new-instance v0, Lcom/android/internal/telephony/MccTable$MccEntry;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/MccTable$MccEntry;-><init>(ILjava/lang/String;I)V

    .line 78
    .local v0, "m":Lcom/android/internal/telephony/MccTable$MccEntry;
    sget-object v1, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 80
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 81
    const/4 v2, 0x0

    return-object v2

    .line 83
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/MccTable;->sTable:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/MccTable$MccEntry;

    return-object v2
.end method

.method private static getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 276
    const-string v1, "MccTable"

    const-string v2, "getLocaleForLanguageCountry: skipping no language"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v0

    .line 279
    :cond_0
    if-nez p2, :cond_1

    .line 280
    const-string p2, ""

    .line 283
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v1, "target":Ljava/util/Locale;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "localeArray":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    .local v3, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "ar-XB"

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    const-string v4, "en-XA"

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v4, "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 294
    .local v6, "locale":Ljava/lang/String;
    const/16 v7, 0x5f

    const/16 v8, 0x2d

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 297
    .local v7, "l":Ljava/util/Locale;
    if-eqz v7, :cond_2

    const-string v8, "und"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 298
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 299
    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 303
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 304
    const-string v5, "MccTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocaleForLanguageCountry: got perfect match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 304
    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-object v7

    .line 310
    :cond_4
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v6    # "locale":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/Locale;
    :cond_5
    goto :goto_0

    .line 314
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 315
    const-string v5, "MccTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLocaleForLanguageCountry: no locales for language "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-object v0

    .line 319
    :cond_7
    invoke-static {v1, v4}, Lcom/android/internal/telephony/MccTable;->lookupFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;

    move-result-object v5

    .line 320
    .local v5, "bestMatch":Ljava/util/Locale;
    if-eqz v5, :cond_8

    .line 321
    const-string v6, "MccTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocaleForLanguageCountry: got a fallback match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 321
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-object v5

    .line 331
    :cond_8
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 332
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 333
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    .line 334
    .local v6, "targetInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 335
    const-string v7, "MccTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLocaleForLanguageCountry: target locale is translated: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return-object v1

    .line 345
    .end local v6    # "targetInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_9
    const-string v6, "MccTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getLocaleForLanguageCountry: got language-only match: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 349
    .end local v2    # "localeArray":[Ljava/lang/String;
    .end local v3    # "locales":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "languageMatches":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v5    # "bestMatch":Ljava/util/Locale;
    :catch_0
    move-exception v2

    .line 350
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MccTable"

    const-string v4, "getLocaleForLanguageCountry: exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I
    .param p2, "simLanguage"    # Ljava/lang/String;

    .line 382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 383
    .local v0, "hasSimLanguage":Z
    if-eqz v0, :cond_0

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "language":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    .local v2, "country":Ljava/lang/String;
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLocaleFromMcc("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 391
    .local v3, "locale":Ljava/util/Locale;
    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    .line 392
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    const-string v4, "MccTable"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[retry ] getLocaleFromMcc("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/MccTable;->getLocaleForLanguageCountry(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    return-object v4

    .line 397
    :cond_1
    return-object v3
.end method

.method private static isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "operatorNumeric"    # Ljava/lang/String;

    .line 401
    if-eqz p0, :cond_1

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const-string v0, "000"

    .line 403
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 401
    :goto_1
    return v0
.end method

.method private static lookupFallback(Ljava/util/Locale;Ljava/util/List;)Ljava/util/Locale;
    .locals 2
    .param p0, "target"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    .line 254
    .local p1, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    move-object v0, p0

    .line 255
    .local v0, "fallback":Ljava/util/Locale;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MccTable;->FALLBACKS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    return-object v0

    .line 261
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    .line 362
    invoke-static {}, Lcom/android/internal/telephony/TimeServiceHelper;->isTimeZoneSettingInitializedStatic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->defaultTimeZoneForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "zoneId":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 366
    invoke-static {p0, v0}, Lcom/android/internal/telephony/TimeServiceHelper;->setDeviceTimeZoneStatic(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    const-string v1, "MccTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timezone set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v0    # "zoneId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static setWifiCountryCodeFromMcc(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # I

    .line 414
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 415
    .local v0, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 416
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiCountryCodeFromMcc mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 418
    .local v2, "subIds":[I
    const/4 v3, 0x0

    .line 419
    .local v3, "phoneId":I
    const/4 v4, 0x0

    .line 423
    .local v4, "isValidOnAnySub":Z
    if-nez p1, :cond_2

    if-eqz v2, :cond_2

    array-length v5, v2

    if-lez v5, :cond_2

    .line 424
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v2, v6

    .line 425
    .local v7, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 426
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, "operatorNumeric":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/telephony/MccTable;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 428
    const-string v5, "MccTable"

    const-string v6, "operatornumeric is valid, Do not overwrite"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v4, 0x1

    .line 431
    goto :goto_1

    .line 424
    .end local v7    # "subId":I
    .end local v8    # "operatorNumeric":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 434
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 435
    return-void

    .line 438
    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "country":Ljava/lang/String;
    const-string v6, "MccTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_COUNTRY_CODE set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 441
    .local v6, "wM":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method public static smallestDigitsMccForMnc(I)I
    .locals 2
    .param p0, "mcc"    # I

    .line 149
    invoke-static {p0}, Lcom/android/internal/telephony/MccTable;->entryForMcc(I)Lcom/android/internal/telephony/MccTable$MccEntry;

    move-result-object v0

    .line 151
    .local v0, "entry":Lcom/android/internal/telephony/MccTable$MccEntry;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x2

    return v1

    .line 154
    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/MccTable$MccEntry;->mSmallestDigitsMnc:I

    return v1
.end method

.method public static updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "fromServiceState"    # Z

    .line 167
    const-string v0, "MccTable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMccMncConfiguration mccmnc=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' fromServiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "persist.sys.override_mcc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "overrideMcc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    move-object p1, v0

    .line 173
    const-string v1, "MccTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMccMncConfiguration overriding mccmnc=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v0    # "overrideMcc":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 180
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "defaultMccMnc":Ljava/lang/String;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMccMncConfiguration defaultMccMnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 190
    .local v1, "mcc":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    .local v2, "mnc":I
    nop

    .line 193
    nop

    .line 196
    const-string v3, "MccTable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMccMncConfiguration: mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-eqz v1, :cond_1

    .line 198
    invoke-static {p0, v1}, Lcom/android/internal/telephony/MccTable;->setTimezoneFromMccIfNeeded(Landroid/content/Context;I)V

    .line 200
    :cond_1
    if-eqz p2, :cond_2

    .line 201
    invoke-static {p0, v1}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    goto :goto_2

    .line 205
    :cond_2
    :try_start_1
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    .line 206
    .local v3, "config":Landroid/content/res/Configuration;
    const/4 v4, 0x0

    .line 207
    .local v4, "updateConfig":Z
    if-eqz v1, :cond_4

    .line 208
    iput v1, v3, Landroid/content/res/Configuration;->mcc:I

    .line 209
    if-nez v2, :cond_3

    const v5, 0xffff

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    iput v5, v3, Landroid/content/res/Configuration;->mnc:I

    .line 210
    const/4 v4, 0x1

    .line 213
    :cond_4
    if-eqz v4, :cond_5

    .line 214
    const-string v5, "MccTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMccMncConfiguration updateConfig config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    goto :goto_1

    .line 217
    :cond_5
    const-string v5, "MccTable"

    const-string v6, "updateMccMncConfiguration nothing to update"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "updateConfig":Z
    :goto_1
    goto :goto_2

    .line 219
    :catch_0
    move-exception v3

    .line 220
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "MccTable"

    const-string v5, "Can\'t update configuration"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "mcc":I
    .end local v2    # "mnc":I
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 191
    .restart local v0    # "defaultMccMnc":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MccTable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing IMSI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 224
    .end local v0    # "defaultMccMnc":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    if-eqz p2, :cond_7

    .line 226
    invoke-static {p0, v1}, Lcom/android/internal/telephony/MccTable;->setWifiCountryCodeFromMcc(Landroid/content/Context;I)V

    .line 229
    :cond_7
    :goto_3
    return-void
.end method
