.class public Lcom/alibaba/fastjson/parser/EnumDeserializer;
.super Ljava/lang/Object;
.source "EnumDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field private final enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final values:[Ljava/lang/Enum;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->values:[Ljava/lang/Enum;

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

    .line 23
    :try_start_0
    iget-object p2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 24
    iget p3, p2, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x2

    const-string v1, " error, value : "

    const-string v2, "parse enum "

    const/16 v3, 0x10

    if-ne p3, v0, :cond_1

    .line 26
    :try_start_1
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result p1

    .line 27
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    if-ltz p1, :cond_0

    .line 29
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->values:[Ljava/lang/Enum;

    array-length p3, p2

    if-gt p1, p3, :cond_0

    .line 33
    aget-object p1, p2, p1

    return-object p1

    .line 30
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    const/4 v0, 0x4

    const/4 v4, 0x0

    if-ne p3, v0, :cond_3

    .line 35
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    return-object v4

    .line 42
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, 0x8

    if-ne p3, v0, :cond_4

    .line 45
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object v4

    .line 49
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object p1

    .line 52
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/EnumDeserializer;->enumClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 54
    throw p1
.end method
