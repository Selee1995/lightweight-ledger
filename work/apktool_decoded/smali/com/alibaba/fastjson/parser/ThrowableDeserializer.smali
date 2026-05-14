.class public Lcom/alibaba/fastjson/parser/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 20
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 22
    iget v3, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 23
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v5

    .line 27
    :cond_0
    iget v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const-string v6, "syntax error"

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v3, v7, :cond_1

    .line 28
    iput v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_0

    .line 30
    :cond_1
    iget v3, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v9, 0xc

    if-ne v3, v9, :cond_17

    :goto_0
    if-eqz v1, :cond_2

    .line 38
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_2

    .line 39
    check-cast v1, Ljava/lang/Class;

    .line 40
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v5

    .line 47
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    .line 51
    :goto_2
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v2, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xd

    const/16 v14, 0x10

    if-nez v12, :cond_4

    .line 54
    iget v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v15, v13, :cond_3

    .line 55
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    move-object/from16 v15, p0

    goto/16 :goto_6

    .line 58
    :cond_3
    iget v15, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v15, v14, :cond_4

    goto :goto_2

    :cond_4
    const/16 v15, 0x3a

    .line 63
    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const-string v15, "@type"

    .line 65
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v7, 0x4

    if-eqz v15, :cond_6

    .line 66
    iget v1, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v1, v7, :cond_5

    .line 67
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 72
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_3
    move-object/from16 v15, p0

    goto :goto_5

    .line 70
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v15, "message"

    .line 73
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 74
    iget v10, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v10, v4, :cond_7

    move-object v10, v5

    goto :goto_4

    .line 76
    :cond_7
    iget v10, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v10, v7, :cond_8

    .line 77
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    move-object v10, v7

    .line 81
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 79
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v7, "cause"

    .line 82
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    move-object/from16 v15, p0

    .line 83
    invoke-virtual {v15, v0, v5, v7}, Lcom/alibaba/fastjson/parser/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/Throwable;

    goto :goto_5

    :cond_a
    move-object/from16 v15, p0

    const-string v7, "stackTrace"

    .line 84
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 85
    const-class v7, [Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, [Ljava/lang/StackTraceElement;

    goto :goto_5

    .line 88
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :goto_5
    iget v7, v2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-ne v7, v13, :cond_16

    .line 92
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    :goto_6
    if-nez v1, :cond_c

    .line 99
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v10, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 105
    :cond_c
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    move-object v3, v5

    move-object v4, v3

    move-object v6, v4

    const/4 v2, 0x0

    :goto_7
    const/4 v7, 0x1

    if-ge v2, v1, :cond_10

    aget-object v12, v0, v2

    .line 106
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_d

    move-object v6, v12

    goto :goto_8

    .line 111
    :cond_d
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-ne v13, v7, :cond_e

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v8

    const-class v14, Ljava/lang/String;

    if-ne v13, v14, :cond_e

    move-object v4, v12

    goto :goto_8

    .line 116
    :cond_e
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_f

    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v13, v13, v8

    const-class v14, Ljava/lang/String;

    if-ne v13, v14, :cond_f

    .line 117
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    aget-object v7, v13, v7

    const-class v13, Ljava/lang/Throwable;

    if-ne v7, v13, :cond_f

    move-object v3, v12

    :cond_f
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/Object;

    aput-object v10, v0, v8

    aput-object v9, v0, v7

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_9

    :cond_11
    if-eqz v4, :cond_12

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v10, v0, v8

    .line 126
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    goto :goto_9

    :cond_12
    if-eqz v6, :cond_13

    new-array v0, v8, [Ljava/lang/Object;

    .line 128
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/Throwable;

    :cond_13
    :goto_9
    if-nez v5, :cond_14

    .line 132
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v10, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :cond_14
    move-object v0, v5

    :goto_a
    if-eqz v11, :cond_15

    .line 140
    invoke-virtual {v0, v11}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_15
    return-object v0

    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "create instance error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    const/4 v7, 0x2

    goto/16 :goto_2

    :cond_17
    move-object/from16 v15, p0

    .line 31
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
