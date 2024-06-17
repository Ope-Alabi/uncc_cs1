with open("pretext/Files/olympics.txt", "r") as olympicsfile:
    for aline in olympicsfile:
        values = aline.strip().split(",")
        print(values[0], "is from", values[3], "and is on the roster for", values[4])
