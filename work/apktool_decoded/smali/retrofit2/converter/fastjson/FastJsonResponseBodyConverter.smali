.class final Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "FastJsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson/parser/Feature;


# instance fields
.field private config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private featureValues:I

.field private features:[Lcom/alibaba/fastjson/parser/Feature;

.field private mType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 14
    sput-object v0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method

.method varargs constructor <init>(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->mType:Ljava/lang/reflect/Type;

    .line 25
    iput-object p2, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 26
    iput p3, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->featureValues:I

    .line 27
    iput-object p4, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->mType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget v3, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->featureValues:I

    iget-object v4, p0, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->features:[Lcom/alibaba/fastjson/parser/Feature;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lretrofit2/converter/fastjson/FastJsonResponseBodyConverter;->EMPTY_SERIALIZER_FEATURES:[Lcom/alibaba/fastjson/parser/Feature;

    :goto_0
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    throw v0
.end method
