.class public Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;
.super Ljava/lang/Object;
.source "DOMParserToolUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    }
.end annotation


# static fields
.field private static final CUSTOM_PACKAGE_DATA:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "EnterPriseCustompackage"

.field private static mBookList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/custompackage/res/config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->CUSTOM_PACKAGE_DATA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 122
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->CUSTOM_PACKAGE_DATA:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    return-object v1

    .line 128
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 129
    .local v2, "instream":Ljava/io/InputStream;
    invoke-static {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->readXML(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v2    # "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    sput-object v1, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    .line 134
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 135
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;

    .line 136
    .local v2, "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    invoke-virtual {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-virtual {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->getvalue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    .end local v2    # "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    :cond_2
    goto :goto_1

    .line 141
    :cond_3
    return-object v1
.end method

.method public static isSupportFactoryReset(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .line 145
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 146
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->CUSTOM_PACKAGE_DATA:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    return v1

    .line 151
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v2, "instream":Ljava/io/InputStream;
    invoke-static {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->readXML(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .end local v2    # "instream":Ljava/io/InputStream;
    goto :goto_0

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sput-object v3, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    .line 157
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 158
    sget-object v0, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils;->mBookList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;

    .line 159
    .local v2, "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    invoke-virtual {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    invoke-virtual {v2}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->getvalue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 162
    .end local v2    # "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    return v1
.end method

.method public static readXML(Ljava/io/InputStream;)Ljava/util/List;
    .locals 17
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;",
            ">;"
        }
    .end annotation

    .line 70
    move-object/from16 v1, p0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 72
    .local v2, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 75
    .local v3, "bookList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;>;"
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 76
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 77
    .local v4, "parse":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 78
    .local v5, "root":Lorg/w3c/dom/Element;
    const-string/jumbo v6, "item"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 79
    .local v6, "nodeList":Lorg/w3c/dom/NodeList;
    const-string v7, "EnterPriseCustompackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v8, 0x0

    .line 81
    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 82
    new-instance v9, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;

    invoke-direct {v9}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;-><init>()V

    .line 83
    .local v9, "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 84
    .local v10, "item":Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 85
    .local v11, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .line 85
    .local v12, "j":I
    :goto_1
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 86
    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 87
    .local v13, "node":Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 88
    const-string/jumbo v14, "name"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 89
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v14

    .line 90
    .local v14, "content":Ljava/lang/String;
    const-string v15, "EnterPriseCustompackage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "NAME:"

    .line 90
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v16, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {v9, v14}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->setName(Ljava/lang/String;)V

    .line 92
    .end local v14    # "content":Ljava/lang/String;
    goto :goto_2

    .line 92
    .end local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_0
    move-object/from16 v16, v0

    .line 92
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    const-string/jumbo v0, "value"

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "content":Ljava/lang/String;
    const-string v7, "EnterPriseCustompackage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "VALUE:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v9, v0}, Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;->setvalue(Ljava/lang/String;)V

    .line 95
    .end local v0    # "content":Ljava/lang/String;
    .end local v13    # "node":Lorg/w3c/dom/Node;
    goto :goto_2

    .line 85
    .end local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_1
    move-object/from16 v16, v0

    .line 85
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .line 100
    .end local v12    # "j":I
    .end local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_3
    move-object/from16 v16, v0

    .line 100
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v9    # "book":Lcn/nubia/server/enterprisecustom/DOMParserToolUtils$Book;
    .end local v10    # "item":Lorg/w3c/dom/Element;
    .end local v11    # "nodes":Lorg/w3c/dom/NodeList;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, v16

    goto/16 :goto_0

    .line 110
    .end local v4    # "parse":Lorg/w3c/dom/Document;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v8    # "i":I
    .end local v16    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_4
    if-eqz v1, :cond_5

    .line 112
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 110
    :catchall_0
    move-exception v0

    move-object v4, v0

    goto :goto_5

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_5

    .line 112
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 105
    :catch_1
    move-exception v0

    .line 106
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_4
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    if-eqz v1, :cond_5

    .line 112
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 103
    :catch_2
    move-exception v0

    .line 104
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    if-eqz v1, :cond_5

    .line 112
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 115
    :goto_3
    goto :goto_4

    .line 113
    :catch_3
    move-exception v0

    move-object v4, v0

    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 118
    :cond_5
    :goto_4
    return-object v3

    .line 110
    :goto_5
    if-eqz v1, :cond_6

    .line 112
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 115
    goto :goto_6

    .line 113
    :catch_4
    move-exception v0

    move-object v5, v0

    .line 114
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    throw v4
.end method
