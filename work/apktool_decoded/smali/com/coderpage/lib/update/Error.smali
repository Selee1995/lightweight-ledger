.class public Lcom/coderpage/lib/update/Error;
.super Ljava/lang/Object;
.source "Error.java"


# instance fields
.field private code:I

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/coderpage/lib/update/Error;->code:I

    .line 14
    iput-object p2, p0, Lcom/coderpage/lib/update/Error;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/coderpage/lib/update/Error;->code:I

    return v0
.end method

.method public message()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/coderpage/lib/update/Error;->message:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERR: code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coderpage/lib/update/Error;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coderpage/lib/update/Error;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
