.class public Lcom/coderpage/mine/utils/MimeUtils;
.super Ljava/lang/Object;
.source "MimeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMimeBySuffix(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const-string v0, ""

    if-nez p0, :cond_0

    .line 15
    invoke-static {v0}, Lcom/coderpage/mine/utils/MimeUtils;->getMimeBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "."

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 21
    invoke-static {v0}, Lcom/coderpage/mine/utils/MimeUtils;->getMimeBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/coderpage/mine/utils/MimeUtils;->getMimeBySuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMimeBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "suffix"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, ".class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x44

    goto/16 :goto_0

    :sswitch_1
    const-string v0, ".xlsx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x43

    goto/16 :goto_0

    :sswitch_2
    const-string v0, ".rmvb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x42

    goto/16 :goto_0

    :sswitch_3
    const-string v0, ".prop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x41

    goto/16 :goto_0

    :sswitch_4
    const-string v0, ".pptx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x40

    goto/16 :goto_0

    :sswitch_5
    const-string v0, ".mpga"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x3f

    goto/16 :goto_0

    :sswitch_6
    const-string v0, ".mpg4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x3e

    goto/16 :goto_0

    :sswitch_7
    const-string v0, ".mpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x3d

    goto/16 :goto_0

    :sswitch_8
    const-string v0, ".json"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x3c

    goto/16 :goto_0

    :sswitch_9
    const-string v0, ".jpeg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x3b

    goto/16 :goto_0

    :sswitch_a
    const-string v0, ".java"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x3a

    goto/16 :goto_0

    :sswitch_b
    const-string v0, ".html"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x39

    goto/16 :goto_0

    :sswitch_c
    const-string v0, ".gtar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x38

    goto/16 :goto_0

    :sswitch_d
    const-string v0, ".docx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x37

    goto/16 :goto_0

    :sswitch_e
    const-string v0, ".conf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x36

    goto/16 :goto_0

    :sswitch_f
    const-string v0, ".JSON"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x35

    goto/16 :goto_0

    :sswitch_10
    const-string v0, ".zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x34

    goto/16 :goto_0

    :sswitch_11
    const-string v0, ".xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x33

    goto/16 :goto_0

    :sswitch_12
    const-string v0, ".xls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x32

    goto/16 :goto_0

    :sswitch_13
    const-string v0, ".wps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x31

    goto/16 :goto_0

    :sswitch_14
    const-string v0, ".wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0x30

    goto/16 :goto_0

    :sswitch_15
    const-string v0, ".wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x2f

    goto/16 :goto_0

    :sswitch_16
    const-string v0, ".wav"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0x2e

    goto/16 :goto_0

    :sswitch_17
    const-string v0, ".txt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x2d

    goto/16 :goto_0

    :sswitch_18
    const-string v0, ".tgz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0x2c

    goto/16 :goto_0

    :sswitch_19
    const-string v0, ".tar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x2b

    goto/16 :goto_0

    :sswitch_1a
    const-string v0, ".rtf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v1, 0x2a

    goto/16 :goto_0

    :sswitch_1b
    const-string v0, ".ppt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x29

    goto/16 :goto_0

    :sswitch_1c
    const-string v0, ".pps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v1, 0x28

    goto/16 :goto_0

    :sswitch_1d
    const-string v0, ".png"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/16 v1, 0x27

    goto/16 :goto_0

    :sswitch_1e
    const-string v0, ".pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/16 v1, 0x26

    goto/16 :goto_0

    :sswitch_1f
    const-string v0, ".ogg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x25

    goto/16 :goto_0

    :sswitch_20
    const-string v0, ".msg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    goto/16 :goto_0

    :cond_20
    const/16 v1, 0x24

    goto/16 :goto_0

    :sswitch_21
    const-string v0, ".mpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_0

    :cond_21
    const/16 v1, 0x23

    goto/16 :goto_0

    :sswitch_22
    const-string v0, ".mpe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x22

    goto/16 :goto_0

    :sswitch_23
    const-string v0, ".mpc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    goto/16 :goto_0

    :cond_23
    const/16 v1, 0x21

    goto/16 :goto_0

    :sswitch_24
    const-string v0, ".mov"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto/16 :goto_0

    :cond_24
    const/16 v1, 0x20

    goto/16 :goto_0

    :sswitch_25
    const-string v0, ".mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_25

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x1f

    goto/16 :goto_0

    :sswitch_26
    const-string v0, ".mp3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_0

    :cond_26
    const/16 v1, 0x1e

    goto/16 :goto_0

    :sswitch_27
    const-string v0, ".mp2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x1d

    goto/16 :goto_0

    :sswitch_28
    const-string v0, ".log"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    goto/16 :goto_0

    :cond_28
    const/16 v1, 0x1c

    goto/16 :goto_0

    :sswitch_29
    const-string v0, ".m4v"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x1b

    goto/16 :goto_0

    :sswitch_2a
    const-string v0, ".m4u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2a

    goto/16 :goto_0

    :cond_2a
    const/16 v1, 0x1a

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, ".m4p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x19

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, ".m4b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto/16 :goto_0

    :cond_2c
    const/16 v1, 0x18

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, ".m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d

    goto/16 :goto_0

    :cond_2d
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, ".m3u"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto/16 :goto_0

    :cond_2e
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_0

    :cond_2f
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_30
    const-string v0, ".jar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    goto/16 :goto_0

    :cond_30
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_31
    const-string v0, ".htm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_31

    goto/16 :goto_0

    :cond_31
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_32
    const-string v0, ".gif"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_33
    const-string v0, ".exe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto/16 :goto_0

    :cond_33
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_34
    const-string v0, ".doc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    goto/16 :goto_0

    :cond_34
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_35
    const-string v0, ".csv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_0

    :cond_35
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_36
    const-string v0, ".cpp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_0

    :cond_36
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_37
    const-string v0, ".bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto/16 :goto_0

    :cond_37
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_38
    const-string v0, ".bin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_38

    goto/16 :goto_0

    :cond_38
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_39
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_39

    goto/16 :goto_0

    :cond_39
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, ".asf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto/16 :goto_0

    :cond_3a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3b

    goto/16 :goto_0

    :cond_3b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, ".CSV"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c

    goto/16 :goto_0

    :cond_3c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, ".3gp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_0

    :cond_3d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3e
    const-string v0, ".sh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    goto :goto_0

    :cond_3e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_3f
    const-string v0, ".rc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3f

    goto :goto_0

    :cond_3f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_40
    const-string v0, ".js"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_0

    :cond_40
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_41
    const-string v0, ".gz"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_0

    :cond_41
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_42
    const-string v0, ".z"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_42

    goto :goto_0

    :cond_42
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_43
    const-string v0, ".h"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_0

    :cond_43
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_44
    const-string v0, ".c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_44

    goto :goto_0

    :cond_44
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p0, "*/*"

    return-object p0

    :pswitch_0
    const-string p0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    return-object p0

    :pswitch_1
    const-string p0, "audio/x-pn-realaudio"

    return-object p0

    :pswitch_2
    const-string p0, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    return-object p0

    :pswitch_3
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_4
    const-string p0, "application/x-gtar"

    return-object p0

    :pswitch_5
    const-string p0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    return-object p0

    :pswitch_6
    const-string p0, "application/json"

    return-object p0

    :pswitch_7
    const-string p0, "application/x-zip-compressed"

    return-object p0

    :pswitch_8
    const-string p0, "application/vnd.ms-excel"

    return-object p0

    :pswitch_9
    const-string p0, "application/vnd.ms-works"

    return-object p0

    :pswitch_a
    const-string p0, "audio/x-ms-wmv"

    return-object p0

    :pswitch_b
    const-string p0, "audio/x-ms-wma"

    return-object p0

    :pswitch_c
    const-string p0, "audio/x-wav"

    return-object p0

    :pswitch_d
    const-string p0, "application/x-compressed"

    return-object p0

    :pswitch_e
    const-string p0, "application/x-tar"

    return-object p0

    :pswitch_f
    const-string p0, "application/rtf"

    return-object p0

    :pswitch_10
    const-string p0, "application/vnd.ms-powerpoint"

    return-object p0

    :pswitch_11
    const-string p0, "image/png"

    return-object p0

    :pswitch_12
    const-string p0, "application/pdf"

    return-object p0

    :pswitch_13
    const-string p0, "audio/ogg"

    return-object p0

    :pswitch_14
    const-string p0, "application/vnd.ms-outlook"

    return-object p0

    :pswitch_15
    const-string p0, "video/mpeg"

    return-object p0

    :pswitch_16
    const-string p0, "application/vnd.mpohun.certificate"

    return-object p0

    :pswitch_17
    const-string p0, "video/quicktime"

    return-object p0

    :pswitch_18
    const-string p0, "video/mp4"

    return-object p0

    :pswitch_19
    const-string p0, "audio/x-mpeg"

    return-object p0

    :pswitch_1a
    const-string p0, "video/x-m4v"

    return-object p0

    :pswitch_1b
    const-string p0, "video/vnd.mpegurl"

    return-object p0

    :pswitch_1c
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :pswitch_1d
    const-string p0, "audio/x-mpegurl"

    return-object p0

    :pswitch_1e
    const-string p0, "image/jpeg"

    return-object p0

    :pswitch_1f
    const-string p0, "application/java-archive"

    return-object p0

    :pswitch_20
    const-string p0, "text/html"

    return-object p0

    :pswitch_21
    const-string p0, "image/gif"

    return-object p0

    :pswitch_22
    const-string p0, "application/msword"

    return-object p0

    :pswitch_23
    const-string p0, "image/bmp"

    return-object p0

    :pswitch_24
    const-string p0, "application/octet-stream"

    return-object p0

    :pswitch_25
    const-string p0, "video/x-msvideo"

    return-object p0

    :pswitch_26
    const-string p0, "video/x-ms-asf"

    return-object p0

    :pswitch_27
    const-string p0, "application/vnd.android.package-archive"

    return-object p0

    :pswitch_28
    const-string p0, "text/csv"

    return-object p0

    :pswitch_29
    const-string p0, "video/3gpp"

    return-object p0

    :pswitch_2a
    const-string p0, "application/x-javascript"

    return-object p0

    :pswitch_2b
    const-string p0, "application/x-gzip"

    return-object p0

    :pswitch_2c
    const-string p0, "application/x-compress"

    return-object p0

    :pswitch_2d
    const-string p0, "text/plain"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x5f5 -> :sswitch_44
        0x5fa -> :sswitch_43
        0x60c -> :sswitch_42
        0xb9a1 -> :sswitch_41
        0xb9f7 -> :sswitch_40
        0xbadf -> :sswitch_3f
        0xbb03 -> :sswitch_3e
        0x15b56e -> :sswitch_3d
        0x15eef8 -> :sswitch_3c
        0x16632e -> :sswitch_3b
        0x166386 -> :sswitch_3a
        0x1663e6 -> :sswitch_39
        0x166619 -> :sswitch_38
        0x166697 -> :sswitch_37
        0x166ab5 -> :sswitch_36
        0x166b18 -> :sswitch_35
        0x166e4a -> :sswitch_34
        0x167324 -> :sswitch_33
        0x1678d6 -> :sswitch_32
        0x167df3 -> :sswitch_31
        0x16832d -> :sswitch_30
        0x1684f3 -> :sswitch_2f
        0x1688e1 -> :sswitch_2e
        0x1688ec -> :sswitch_2d
        0x1688ed -> :sswitch_2c
        0x1688fb -> :sswitch_2b
        0x168900 -> :sswitch_2a
        0x168901 -> :sswitch_29
        0x168c56 -> :sswitch_28
        0x169001 -> :sswitch_27
        0x169002 -> :sswitch_26
        0x169003 -> :sswitch_25
        0x169026 -> :sswitch_24
        0x169032 -> :sswitch_23
        0x169034 -> :sswitch_22
        0x169036 -> :sswitch_21
        0x169093 -> :sswitch_20
        0x1696a1 -> :sswitch_1f
        0x169a04 -> :sswitch_1e
        0x169b3b -> :sswitch_1d
        0x169b85 -> :sswitch_1c
        0x169b86 -> :sswitch_1b
        0x16a376 -> :sswitch_1a
        0x16a8b7 -> :sswitch_19
        0x16a979 -> :sswitch_18
        0x16ab82 -> :sswitch_17
        0x16b3fe -> :sswitch_16
        0x16b55d -> :sswitch_15
        0x16b572 -> :sswitch_14
        0x16b5cc -> :sswitch_13
        0x16b911 -> :sswitch_12
        0x16b929 -> :sswitch_11
        0x16c033 -> :sswitch_10
        0x2ab1e16 -> :sswitch_f
        0x2b6e852 -> :sswitch_e
        0x2b75b6e -> :sswitch_d
        0x2b8cb0c -> :sswitch_c
        0x2b940d9 -> :sswitch_b
        0x2b9e350 -> :sswitch_a
        0x2ba1996 -> :sswitch_9
        0x2ba2616 -> :sswitch_8
        0x2bb76b3 -> :sswitch_7
        0x2bb76be -> :sswitch_6
        0x2bb76eb -> :sswitch_5
        0x2bcd5b2 -> :sswitch_4
        0x2bcdc91 -> :sswitch_3
        0x2bdb355 -> :sswitch_2
        0x2c06987 -> :sswitch_1
        0x5424960a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_2d
        :pswitch_2d
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_2d
        :pswitch_28
        :pswitch_22
        :pswitch_24
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_2d
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_2d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2d
        :pswitch_7
        :pswitch_6
        :pswitch_2d
        :pswitch_5
        :pswitch_4
        :pswitch_20
        :pswitch_2d
        :pswitch_1e
        :pswitch_6
        :pswitch_15
        :pswitch_18
        :pswitch_3
        :pswitch_2
        :pswitch_2d
        :pswitch_1
        :pswitch_0
        :pswitch_24
    .end packed-switch
.end method
