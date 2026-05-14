.class public Lcom/coderpage/base/utils/FunctionUtils;
.super Ljava/lang/Object;
.source "FunctionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coderpage/base/utils/FunctionUtils$Task;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invokeSafe(Ljava/lang/Object;Lcom/coderpage/base/utils/FunctionUtils$Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "task"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/coderpage/base/utils/FunctionUtils$Task<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p1, p0}, Lcom/coderpage/base/utils/FunctionUtils$Task;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
