.class public final Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
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

    .line 149
    const-class p3, Ljava/lang/StackTraceElement;

    if-ne p2, p3, :cond_0

    .line 150
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/MiscCodec;->parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 157
    iget v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 158
    iput v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v0, 0x10

    .line 159
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 161
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v3, 0x4

    const-string v4, "syntax error"

    if-ne v0, v3, :cond_2

    .line 162
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v3, "val"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const/16 p3, 0x11

    .line 170
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 172
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p3

    const/16 v0, 0xd

    .line 174
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {p1, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 176
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p3

    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    .line 184
    :cond_4
    instance-of v3, p3, Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 185
    check-cast p3, Ljava/lang/String;

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 194
    :cond_5
    const-class v3, Ljava/util/UUID;

    if-ne p2, v3, :cond_6

    .line 195
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    return-object p1

    .line 196
    :cond_6
    const-class v3, Ljava/lang/Class;

    if-ne p2, v3, :cond_7

    .line 197
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {p3, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 198
    :cond_7
    const-class v3, Ljava/util/Locale;

    const/4 v4, 0x1

    if-ne p2, v3, :cond_a

    const-string p1, "_"

    .line 199
    invoke-virtual {p3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 201
    array-length p2, p1

    if-ne p2, v4, :cond_8

    .line 202
    new-instance p2, Ljava/util/Locale;

    aget-object p1, p1, v2

    invoke-direct {p2, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 205
    :cond_8
    array-length p2, p1

    if-ne p2, v1, :cond_9

    .line 206
    new-instance p2, Ljava/util/Locale;

    aget-object p3, p1, v2

    aget-object p1, p1, v4

    invoke-direct {p2, p3, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 209
    :cond_9
    new-instance p2, Ljava/util/Locale;

    aget-object p3, p1, v2

    aget-object v0, p1, v4

    aget-object p1, p1, v1

    invoke-direct {p2, p3, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 210
    :cond_a
    const-class v1, Ljava/net/URI;

    if-ne p2, v1, :cond_b

    .line 211
    invoke-static {p3}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    return-object p1

    .line 212
    :cond_b
    const-class v1, Ljava/net/URL;

    if-ne p2, v1, :cond_c

    .line 214
    :try_start_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 216
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "create url error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 218
    :cond_c
    const-class v1, Ljava/util/regex/Pattern;

    if-ne p2, v1, :cond_d

    .line 219
    invoke-static {p3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    return-object p1

    .line 220
    :cond_d
    const-class v1, Ljava/nio/charset/Charset;

    if-ne p2, v1, :cond_e

    .line 221
    invoke-static {p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 222
    :cond_e
    const-class v1, Ljava/util/Currency;

    if-ne p2, v1, :cond_f

    .line 223
    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p1

    return-object p1

    .line 224
    :cond_f
    const-class v1, Ljava/text/SimpleDateFormat;

    if-ne p2, v1, :cond_10

    .line 225
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-direct {p2, p3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 226
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object p1, p1, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object p2

    .line 228
    :cond_10
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p2, p1, :cond_13

    const-class p1, Ljava/lang/Character;

    if-ne p2, p1, :cond_11

    goto :goto_1

    .line 231
    :cond_11
    instance-of p1, p2, Ljava/lang/Class;

    if-eqz p1, :cond_12

    .line 232
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.Uri"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 235
    :try_start_1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "parse"

    new-array v1, v4, [Ljava/lang/Class;

    .line 236
    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v2

    .line 237
    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 240
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    const-string p3, "parse android.net.Uri error."

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 245
    :cond_12
    invoke-static {p3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    return-object p1

    .line 229
    :cond_13
    :goto_1
    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 187
    :cond_14
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string p2, "except string value"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected parseStackTraceElement(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 251
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 253
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    .line 254
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-object v3

    .line 258
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v5, 0xc

    const/16 v6, 0x10

    if-eq v2, v5, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v6, :cond_1

    goto :goto_0

    .line 259
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v2, 0x0

    move-object v5, v3

    move-object v7, v5

    move-object v8, v7

    const/4 v9, 0x0

    .line 269
    :cond_3
    :goto_1
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v1, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xd

    if-nez v10, :cond_5

    .line 272
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-ne v12, v11, :cond_4

    .line 273
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto/16 :goto_3

    .line 276
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-ne v12, v6, :cond_5

    goto :goto_1

    :cond_5
    const/16 v12, 0x3a

    .line 281
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithChar(C)V

    const-string v12, "className"

    .line 282
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x4

    const-string v14, "syntax error"

    if-eqz v12, :cond_8

    .line 283
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v4, :cond_6

    move-object v5, v3

    goto/16 :goto_2

    .line 285
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v13, :cond_7

    .line 286
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 288
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v12, "methodName"

    .line 290
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 291
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_9

    move-object v7, v3

    goto/16 :goto_2

    .line 293
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v13, :cond_a

    .line 294
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 296
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v12, "fileName"

    .line 298
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 299
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v4, :cond_c

    move-object v8, v3

    goto/16 :goto_2

    .line 301
    :cond_c
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v13, :cond_d

    .line 302
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 304
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string v12, "lineNumber"

    .line 306
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 307
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    if-ne v9, v4, :cond_f

    const/4 v9, 0x0

    goto/16 :goto_2

    .line 309
    :cond_f
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_10

    .line 310
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v9

    goto :goto_2

    .line 312
    :cond_10
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const-string v12, "nativeMethod"

    .line 314
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 315
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_12

    .line 316
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 317
    :cond_12
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v12, 0x6

    if-ne v10, v12, :cond_13

    .line 318
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 319
    :cond_13
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    const/4 v12, 0x7

    if-ne v10, v12, :cond_14

    .line 320
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_2

    .line 322
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-string v12, "syntax error : "

    const-string v15, "@type"

    if-ne v10, v15, :cond_19

    .line 325
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v13, :cond_17

    .line 326
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v10

    const-string v13, "java.lang.StackTraceElement"

    .line 327
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_2

    .line 328
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_17
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v4, :cond_18

    .line 339
    :goto_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v10

    if-ne v10, v11, :cond_3

    .line 340
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 344
    :goto_3
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, v5, v7, v8, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 332
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v0, v14}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_3

    .line 43
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_2

    const-class p2, Ljava/lang/Character;

    if-ne p4, p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget p1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget p2, p2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 47
    invoke-static {p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    .line 48
    const-class p2, Ljava/util/Enumeration;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[]"

    .line 49
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, ""

    .line 44
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 58
    :cond_3
    instance-of v1, p2, Ljava/util/regex/Pattern;

    if-eqz v1, :cond_4

    .line 59
    check-cast p2, Ljava/util/regex/Pattern;

    .line 60
    invoke-virtual {p2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 61
    :cond_4
    instance-of v1, p2, Ljava/util/TimeZone;

    if-eqz v1, :cond_5

    .line 62
    check-cast p2, Ljava/util/TimeZone;

    .line 63
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 64
    :cond_5
    instance-of v1, p2, Ljava/util/Currency;

    if-eqz v1, :cond_6

    .line 65
    check-cast p2, Ljava/util/Currency;

    .line 66
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 67
    :cond_6
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 68
    check-cast p2, Ljava/lang/Class;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 70
    :cond_7
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_9

    .line 71
    check-cast p2, Ljava/lang/Character;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p3

    if-nez p3, :cond_8

    const-string p2, "\u0000"

    .line 75
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 77
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 79
    :cond_9
    instance-of v1, p2, Ljava/text/SimpleDateFormat;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 80
    move-object p3, p2

    check-cast p3, Ljava/text/SimpleDateFormat;

    invoke-virtual {p3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object p3

    .line 82
    iget v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_a

    .line 83
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p4, :cond_a

    const/16 p4, 0x7b

    .line 84
    invoke-virtual {v0, p4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p4, "@type"

    .line 85
    invoke-virtual {v0, p4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const-string p1, "val"

    .line 88
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 89
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x7d

    .line 90
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 95
    :cond_a
    invoke-virtual {v0, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 96
    :cond_b
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz v1, :cond_c

    .line 97
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 98
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-interface {p2, p1}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_4

    .line 99
    :cond_c
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONAware;

    if-eqz v1, :cond_d

    .line 100
    check-cast p2, Lcom/alibaba/fastjson/JSONAware;

    .line 101
    invoke-interface {p2}, Lcom/alibaba/fastjson/JSONAware;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 102
    :cond_d
    instance-of v1, p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    if-eqz v1, :cond_e

    .line 103
    check-cast p2, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    .line 104
    invoke-interface {p2, p1, p3, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializable;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_4

    .line 105
    :cond_e
    instance-of v1, p2, Ljava/util/Enumeration;

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    .line 107
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    .line 108
    instance-of v4, p4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_f

    .line 109
    check-cast p4, Ljava/lang/reflect/ParameterizedType;

    .line 110
    invoke-interface {p4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p4

    aget-object v1, p4, v3

    .line 114
    :cond_f
    move-object p4, p2

    check-cast p4, Ljava/util/Enumeration;

    .line 116
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 117
    invoke-virtual {p1, v4, p2, p3, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 p2, 0x5b

    .line 121
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 122
    :goto_2
    invoke-interface {p4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 123
    invoke-interface {p4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 p3, v3, 0x1

    if-eqz v3, :cond_10

    .line 125
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_10
    if-nez p2, :cond_11

    .line 129
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_3

    .line 133
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 135
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v3

    add-int/lit8 v5, p3, -0x1

    .line 136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, p1, p2, v5, v1}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_3
    move v3, p3

    goto :goto_2

    :cond_12
    const/16 p2, 0x5d

    .line 138
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iput-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_4

    :catchall_0
    move-exception p2

    iput-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw p2

    .line 143
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    :goto_4
    return-void
.end method
