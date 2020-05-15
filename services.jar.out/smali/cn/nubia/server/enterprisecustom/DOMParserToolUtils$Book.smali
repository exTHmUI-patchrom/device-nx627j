.class public Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
.super Ljava/lang/Object;
.source "DOMParserToolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Book"
.end annotation


# static fields
.field public static final ITEM:Ljava/lang/String; = "item"

.field public static final ITEMS:Ljava/lang/String; = "items"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getvalue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setvalue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->value:Ljava/lang/String;

    .line 65
    return-void
.end method
