.class public Lcom/coderpage/base/common/NonThrowError;
.super Ljava/lang/Object;
.source "NonThrowError.java"

# interfaces
.implements Lcom/coderpage/base/common/IError;


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


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
            "msg"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/coderpage/base/common/NonThrowError;->code:I

    .line 14
    iput-object p2, p0, Lcom/coderpage/base/common/NonThrowError;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/coderpage/base/common/NonThrowError;->code:I

    return v0
.end method

.method public msg()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/coderpage/base/common/NonThrowError;->msg:Ljava/lang/String;

    return-object v0
.end method
